#this renames all files in a directory. Need to have files organized into state subdirectories. Code will walk recursively through them.

#To DO:
#1. Right now, works for just one industry # but could abstract this further and determine industry or multiple industries
#2. Setup intial checking of images: open so many images to check that images correspond to the right pages.
#3. For Form B, should allow for more than 1 page on a B form

import os, shutil
from PIL import Image

#########
#Set these parameters
year = '1933'
ind = '407'
num_images_per_est_base = 4
ext = '.jpg'

#turn on checking that file names are consecutive
check = 1
#base of file names of Images
file_base = 'IMG_'

#directory to walk through and directory to write files to.
origin_dir = '/Volumes/Dropbox Backup/Dropbox (SES1459263)/RA Images Organized/Anne Marie/Missing/'+year+' - '+ind
dest_dir = os.path.join('/Volumes/Dropbox Backup/Dropbox (SES1459263)/Original Images',year,ind)
############################

#dictionary to keep track of counter for each state
state_counter = dict()
switch_B = 0
dirs_to_walk = [] 
if not os.path.exists(dest_dir):
	os.makedirs(dest_dir)

#funciton to check whether files are consecutively labeled
def consecutive(last_file, file):
	compared = True
	if last_file!='':
		compared = int(last_file.lstrip(file_base).rstrip(ext))+1 == int(file.lstrip(file_base).rstrip(ext))
	return compared

#get directories and check if have # of files divisible by num_images_per_est_base. Filter those that don't
for root, dirs, files in os.walk(origin_dir):

	for dir in dirs: 
		#check whether directory has valid # of files
		num_files = len([file for file in os.listdir(os.path.join(root, dir)) if ext == os.path.splitext(file)[1]])
		if num_files>0 and os.path.join(root,dir) != dest_dir:
			if  not num_files%num_images_per_est_base and 'Form B' not in dir:
				state_counter[dir]=[0, '', '']
				dirs_to_walk.append(dir)
			else:
				print dir+" does not have number of images divisible by number per est. specified."

#walk through directories
for dir in dirs_to_walk:
	
	#walk through files in that directory
	for file in os.listdir(dir):
		#now do the renaming
		src = os.path.join(root, file)
		state = os.path.split(root)[1]
		#check that directory is not a Form B subdirectory
		if state=='Form B':
			switch_B = 1
			#go up one level to find the state
			state = os.path.split(os.path.split(root)[0])[1]
		
		#check that file has write file extension and state is in the dictionary 
		if ext == os.path.splitext(file)[1]:
			#pull out current state of counter and last file looked at
			last_file = state_counter[state][1]
			last_root = state_counter[state][2]
			counter = state_counter[state][0]
			
			how_to_proceed = 1
			#figure out where we are in the counter and which file number and sub_counder
			file_counter, sub_counter = divmod(counter, num_images_per_est_base)
			file_counter += 1
			sub_counter += 1
			
			#this checks that images are ordered successively as check that imags are paired right
			if check and not consecutive(last_file, file) and root==last_root and sub_counter>1 and not switch_B:
				#open the images to examine
				Image.open(src).show()
				Image.open(os.path.join(last_root, last_file)).show()
				#ask user what to do
				how_to_proceed=int(raw_input("Files "+file+" and " +last_file+" are not numbered consecutively. Proceed=1, Start New Estab.=2, Skip this file=3:"))
				if not( how_to_proceed == '1' or how_to_proceed == '2'):
					print 'skipping this file'
					break
			
			#adjust counting for B forms
			how_to_proceed=int(how_to_proceed)			
			if switch_B:
				file_counter += 1
				sub_counter = 1

			#adjust counting for non-consecutive images	
			if how_to_proceed==2:
				file_counter+=1
				while True:
					sub_counter = raw_input('What page to start numbering?')
					if sub_counter>num_images_per_est_base or sub_counter<1:
						print 'You did not input a valid page number. Needs to be an integer between '+str(1) + ' and ' + str(num_images_per_est)
			
			#construct destination name	
			dst_name = '_'.join([year,ind,state, str(file_counter), str(sub_counter)])+ext
			dst = os.path.join(dest_dir, dst_name)

			#copy the file over and remove if want to
			shutil.copy(src, dst)
			
			#save the new state
			counter = (file_counter-1)*num_images_per_est_base+sub_counter
			state_counter[state]=[counter, file, root]
			
			switch_B = 0

	