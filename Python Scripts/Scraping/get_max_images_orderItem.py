#script to get max_images and orderItem for each Identifier. This is second step in building the dictionary before downloading images.
#would be nice to be able to put this in parallel

#Dependencies: bs4, selenium, PhantomJS
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait

#in standard python distro
import json
import re
from string import Template
import os
from sets import Set
import time

if __name__ == '__main__':

    #parameters to be set
    #user
    user = 'nlz0003'
    #filename of dict_archive in memory
    filename_archive = os.path.join('/Users', user, 'Dropbox (SES1459263)', 'Python Scripts', 'dictionary_archive.txt')
    #set year of data
    year = '1929'
    #set parent ID of record. 
    parentID = '2790961'
    #time to sleep to let page load
    sleep_time = 10
    #set path for chromedriver 
    chromedriver = os.path.join('/Users', user, 'Dropbox (SES1459263)', 'Python Scripts', 'chromedriver') 
    #set environment global for path to chrome driver 
    os.environ['webdriver.chrome.driver'] = chromedriver

    #these should not be modified
    #regular expression to extract orderItem. \d{1,7} is really parentID
    prog_orderItem=re.compile(r"RG29-\d{1,7}-(?P<orderItem>\d{4})-")
   
    #firstpage url template
    firstpageurl_template = Template('https://catalog.archives.gov/id/${Identifier}')

	#initialize webdriver
     #driver=webdriver.PhantomJS()
    driver = webdriver.Chrome(chromedriver)
  
    #Step 0: Setup dictionary of industry-state items to get images for
    #key - Identifer, value =dict{state, industry, searchurl, page_number, orderItem, # images}    
    if os.path.exists(filename_archive):
        
        #load most recent version of dictionary archive
        #note that rest of this code could be put in different script
        dict_archive = json.load(open(filename_archive, 'r'))
        counter = 0
        
        #Step 2: get number of images to be downloaded for each identifier
        for Identifier in dict_archive.keys():
        
            #get state & indnumber from dictionary to build the image names
            state = dict_archive[Identifier]['state']
            indnumber = dict_archive[Identifier]['indnumber']
            counter +=1
            #update with % finished
            print 'Finished ' + str(counter) +' out of ' + str(len(dict_archive.keys()))+' total'
                    
            #Step 2a: Go to URL of first image only in case when haven't collected the max_images
            if dict_archive[Identifier]['max_images']==0 or dict_archive[Identifier]['orderItem']==0:
            
                driver.get(firstpageurl_template.substitute(Identifier=Identifier))
                time.sleep(sleep_time)
                firstpageurl_parsed = BeautifulSoup(driver.page_source, 'html.parser')
                        
                #loop over all the span tags
                for link in firstpageurl_parsed.find_all('span'):
                    #find the tag with the right attributes
                    if link.get('class')==[u'text', u'ng-binding'] and link.get('ng-bind')=="total":
                        #Step 2b: Extract # of images 		
                        if link.string is not None:
                            max_images = int(link.string)
                            print 'Extracted max_images = ' + str(max_images)
                            #save dictionary every time figure out max_images for identifier
                            dict_archive[Identifier]['max_images'] = max_images
                            json.dump(dict_archive, open(filename_archive, 'w'))
                            break
                        
                for link in firstpageurl_parsed.find_all('img'):
					m = prog_orderItem.search(link.get('src'))
					if m: 
						#Step 2c: Extract order of item as well
						orderItem =int(m.group('orderItem'))
						print 'Found orderItem = ' + str(orderItem)
						dict_archive[Identifier]['orderItem'] = orderItem 
						json.dump(dict_archive, open(filename_archive, 'w'))
						break   

        #error checking at end. Print message if still some Identifiers don't seem to have all information necessary
        if set(0) in set(dict_archive[Identifier]['max_images']) or set(0) in set(dict_archive[Identifier]['orderItem']):
            print 'Not all Identifiers have max_images and orderItem values. Rerun!'
             
    else:
        print 'Dictionary does not exist. Run getdictionary.py!'

    driver.quit()
