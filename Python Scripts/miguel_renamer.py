#this moves files to correct numbered subfolders based on miguel's naming convention
#relies on image names all being the same length and being sorted in alphabetical order

import os, shutil, re
from sets import Set

#this resets the dictionary by moving files. Resetting the current_firm and the size
def reset(dict_current):
		#move all the files for current_firm
		files_to_push = dict_current['files_to_push']
		current_state = dict_current['current_state']
		while files_to_push:
			#path to write based on current_size
			path_to_write = os.path.join(dest_dir, current_state, str(dict_current['current_size']))
			#check that path exists. if not, create it
			if not os.path.exists(path_to_write):
				os.makedirs(path_to_write)
			#create name of file to write by popping from files_to_push
			file_origin = files_to_push.pop()
			file_dst = os.path.join(path_to_write, file_origin)
			print 'Origin: '+ os.path.join(origin_dir, current_state, file_origin) + ' Dest: ' + file_dst
			#move the file if file_dst doesn't realy exist
			if not os.path.exists(file_dst):
				shutil.move(os.path.join(origin_dir, current_state, file_origin), file_dst)
		#reset but keep the same current_state
		dict_current = {'current_firm' : '', 'current_size' : 1, 'files_to_push' : [], 'current_state': current_state}
		return dict_current

#walk through only a single level
def walklevel(some_dir, level=1):
    some_dir = some_dir.rstrip(os.path.sep)
    assert os.path.isdir(some_dir)
    num_sep = some_dir.count(os.path.sep)
    print num_sep
    for root, dirs, files in os.walk(some_dir):
        yield root, dirs, files
        num_sep_this = root.count(os.path.sep)
        if num_sep + level <= num_sep_this:
            del dirs[:]

#main script
if __name__ == '__main__':
	#########
	#Set these parameters
	year = '1929'
	ind = '118'
	#allow for more than one possible file extension
	ext = set(['.jpg', '.JPG'])

	#directory to walk through and directory to write files to.
	origin_dir = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images', year, ind)
	dest_dir = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images',year,ind)
	
	#current_firm number: current_firm, current_size, files_to_push, current_state
	dict_current = {'current_firm' : '', 'current_size' : 1, 'files_to_push' : [], 'current_state' : '' }
	
	#get directories and check if have # of files divisible by num_images_per_est_base. Filter those that don't
	for root, dirs, files in os.walk(origin_dir):	

		if re.search('[A-Z][A-Z]', os.path.split(root)[1]): 	#only walk through "state" subdirectories
			#reset the dictionary if starting in new directory.
			dict_current = reset(dict_current)
			dict_current['current_state'] =  os.path.split(root)[1]
		
			for file in os.listdir(root):
			
				#split the file into name and extension
				name_file, ext_file = os.path.splitext(file) 
				#check that extension is in list of "good" extensions
				if ext_file in ext:
			
					#split the file name on ' - ' which is how Miguel specified it. 
					year_file, ind_file, state_file, firm_file, page_file = name_file.split(' - ')
					#need to get rid of "Page " part of page_file 
					foo, page_file = page_file.split(' ')
					#cast to int
					page_file = int(page_file)

					#if the current_firm is not equal to the firm_file, then we're on a new firm 
					if dict_current['current_firm'] != firm_file:
						dict_current = reset(dict_current)
						dict_current['current_firm'] = firm_file
					
					#if the same current_firm
					else:
						#if the page_file is bigger, then increase the current_size to page_file
						if page_file > dict_current['current_size']:
							dict_current['current_size'] = page_file	
				
					#add file to the stack
					dict_current['files_to_push'].append(file)

	#one final flush
	dict_current = reset(dict_current)
	