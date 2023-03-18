#this moves files into state level subdirectories
#useful for after downloading lots of files from NARA website or 
#need to run this file from Python Scripts directory or a dump of images from undergrads

import os, shutil, json

if __name__ == '__main__':
	
	#set common file prefix
	year = '1931'
	ind = '101'
	delimiter = ' - '
	#set directory to clean up
	dir_to_clean = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images', year, ind)	
	#load dictionary of state - state_abbreviations
	state_abbrevs =json.load(open('state_abbrevs.txt', 'r'))
	#correct extension
	correct_ext = '.jpg'
	#loop over files in the directory
	for file in os.listdir(dir_to_clean):
		src = os.path.join(dir_to_clean, file)
		#get extenstion
		ext = os.path.splitext(file)[1]
		#check that this is actually a file and has the right extension
		if os.path.isfile(src) and ext==correct_ext:
			
			try:
				#split up the file name
				foo1, foo2, state, file_counter, foo3 =os.path.splitext(file)[0].split(delimiter)
				state = state.replace('_',' ')
				#state_abbrev = state_abbrevs[state.title()]
	
				#construct path to write
				#path_to_write = os.path.join(dir_to_clean, state_abbrev)
				path_to_write = os.path.join(dir_to_clean, state)
				if not os.path.exists(path_to_write):
					os.makedirs(path_to_write)
	
				#name of file to write
				dst = os.path.join(path_to_write, file)
	
				#move the file ovr
				shutil.move(src, dst)
			except:
				print('Crashed on '+ file)
			