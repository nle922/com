#script to download all images from NARA for CoM

#To Do: 1.Better summary of errors in downloading images
 
#Dependencies: requests
import requests
 
#in standard python distro
import shutil
import json
import time
import re
from string import Template
import os
 
if __name__ == '__main__':
 
    #parameters to be set
    #user 
    user = '/Volumes/Dropbox Backup/Dropbox (SES1459263)'
    #set top level directory to save images
    topfile_dir = os.path.join(user,'237')
    #filename of dict_archive in memory
    filename_archive = os.path.join(user, 'Python Scripts', 'Scraping', 'dictionary_archive.txt')
    #force redownload all images
    redo_downloads = 0
    #set year of data
    year = '1929'
    #set parent ID of record. 
    parentID = '2790961'
    #number of images between echoing to console
    num_times_echo = 200
    
    #industries to download images for
    indnumber_download = set(['237'])
    
    #set of industries that we are collecting for SES
  	#indnumber_download = [116, 114, 126, 128, 271 (234), 317, 407, 311]
  	#set of industries for Mario
  	#indunumber_download_mario = ['104', '110', '1215', '1216', '1217, '626', '1113']
  	#Finished: 317, 128, 126, 407
  	#these industries that we are collecting for SES have not been uploaded yet to NARA website
  	#indnumber_download = [610, 907, 1112, 1123, 1210, 1307, 1501, 1401, 1502]
    
    #note that this doesn't really allow you to select one state for one industry and a different state for a different industry
    #states to download. If empty set, then will download all states
    state_download = set()
    #identifiers to download. If empty set, then will download all Identifiers
    Identifier_download = set()
    #dictionary of things to download
    dict_download = {'Identifier': Identifier_download, 'state': state_download, 'indnumber': indnumber_download}
    
    #imageurl template
    imageurl_template = Template('https://catalog.archives.gov/OpaAPI/media/${Identifier}/content/dc-metro/rg-029/${parentID}/RG29-${parentID}-${orderItem}-${year}-${indnumber}/RG29-${parentID}-${orderItem}-${year}-${indnumber}-${imagenumber}.jpg?download=true')
    #filename Template
    filename_template = Template(year+'_${indnumber}_${state}_${imagenumber}.jpg')
	#time to sleep between downloads
    sleep = .25

    if os.path.exists(filename_archive):        

		#load most recent version of dictionary archive
		dict_archive = json.load(open(filename_archive, 'r'))
		print dict_archive
		counter = 1

		#Step 2: get number of images to be downloaded for each identifier
		for Identifier in dict_archive.keys():
			
			#echo update on how far through
			counter =+ 1 
			if counter % num_times_echo ==0:
				print 'Finished ' + str(100*counter/len(dict_archive.keys())) + ' % of Identifiers'
			#get values from dictionary
			max_images  = dict_archive[Identifier]['max_images']
			orderItem = dict_archive[Identifier]['orderItem']  
			indnumber = dict_archive[Identifier]['indnumber']
			state = dict_archive[Identifier]['state']
			dict_archive[Identifier]['images_downloaded'] = 1
			
			#deduce if this Identifier should be downloaded. This can be based on industry, state, or identifier information
			download = True	
			for kind in dict_download.keys():

				if kind=="Identifier":
					check_in_dict_download = Identifier
				else:
					check_in_dict_download = dict_archive[Identifier][kind]
					
				#once find one failure, then don't download and will skip to the next identified
				if check_in_dict_download not in dict_download[kind] and dict_download[kind]!=set():
					download = False
					break
				
			if download:
				#Step 3: Download each image for each identifiers    
				for imagenumber in range(2, max_images+1):  

					#build path to location of images
					filepath = os.path.join(topfile_dir, year, indnumber)  
					#check that path exists. If not, create the path
					if not os.path.exists(filepath):
						os.makedirs(filepath)

					#echo to console on status of downloads
					if imagenumber % num_times_echo ==0:
						print 'Finished ' +str(imagenumber) + ' of ' + str(max_images)+' images total of Identifier ' +Identifier

					#pad some 0s to imagenumber
					imagenumber = str(imagenumber)
					imagenumber  = "0"*(5-len(imagenumber)) + imagenumber
					#pad some 0s to orderItem 
					orderItem = str(orderItem)
					orderItem = "0"*(4-len(orderItem)) + orderItem

					#build file name to save
					filename = os.path.join(filepath, filename_template.substitute(state=state, indnumber=indnumber, imagenumber=imagenumber))
					#build image url 
					imageurl = imageurl_template.substitute(Identifier=Identifier, parentID=parentID, indnumber=indnumber, imagenumber=imagenumber, year=year, orderItem=orderItem)
					
					#only do this if filename doesn't exist or force override
					
					if not os.path.exists(filename) or redo_downloads:    		
						try:
							response = requests.get(imageurl, stream=True)
							#delay to avoid corrupted previews
							time.sleep(sleep)
							with open(filename, 'wb') as out_file:
								# save image file
								shutil.copyfileobj(response.raw, out_file)
							#update the dictionary and save
							dict_archive[Identifier]['images_downloaded'] += 1
						
							with open(filename_archive, 'w+') as write_out:
							    json.dump(dict_archive, write_out)

						except:
							print 'Bad imageurl: '+imageurl
							break
					else:
						print filename+" already exists"

    else:
        print 'Dictionary does not exist. Run getdictionary.py and get_max_iamges_orderItem.py!'

