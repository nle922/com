#this renames all files in a directory. Need to have files organized into state subdirectories and then within those directories, subdirectories for number of images per schedule. 
#This only checks that # of files in subdireocty is the a multiple of the name of the subdirectory.
#Need all file names in a given subfolder have the same length to insure proper renaming. This code will not rename if this fails.

#To Do:
#1. Remove origin directories once all images have been moved

import os, shutil, json, time, datetime
from sets import Set

#main script
if __name__ == '__main__':
	#########
	#Set these parameters
	year = '1929'
	ind = '122' 
	#allow for more than one possible file extension
	ext = set(['.jpg', '.JPG', '.pdf'])

	#directory to walk through and directory to write files to.
	origin_dir = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images', year, ind)
	dest_dir = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images',year,ind)

	#dictionary to keep track of counter for each state-num_images_per_est_base
	#keys are states and values are array of current establishment number, dictionary with keys the subfolders and current counter there, dictionary with key src file and value dst file
	state_counter = dict()
	#dictionary where key is root and value is whether root is a "good" directory
	good_roots = dict()
	
	#file to write dictionary of src and dst files. Can revert then with the following:
	#for src in dict_files_moved.keys()
		#dst = dict_files_moved[src]
		#shutil.move(dst, src)
		
	#get date for time stamp of file_move_manifest
	ts = datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d')

	#get directories and check if have # of files divisible by num_images_per_est_base. Filter those that don't
	for root, dirs, files in os.walk(origin_dir):

		#walk through directories at "bottom"
		if not dirs: 
			
			head, tail = os.path.split(root)
			#check if we're two levels down
			if head!=origin_dir:
				
				#if we are then pull num_images from title of folder
				num_images_per_est_base = int(tail)
				head, state = os.path.split(head)
				#place files in subfolders of dest_dir based on state
				dst_dir = os.path.join(dest_dir, state)
				#construct file_prefix
				file_prefix = '_'.join([year, ind, state])
				
				#get list of files with proper file extensions
				file_list = [file for file in os.listdir(os.path.join(root)) if os.path.splitext(file)[1] in ext]
				
				#if haven't been in this directory before, then check if it's a good one and add to dictionary
				if root not in good_roots.keys():
					#check if  This is to help make sure naming is done correctly
					len_file_list = [len(file) for file in file_list]
					#good root is not the dest_dir, has more than 0 files in it, and has num_files divisible by name of subfolder, and all files have same length of file name.
					good_roots[root] = root != dest_dir and not len(file_list)%num_images_per_est_base and len(file_list)>0 and max(len_file_list)==min(len_file_list)
			
				if good_roots[root]:

						#create entry in state_counter if state not there
						if state not in set(state_counter.keys()): 
							state_counter[state]=[0, dict(), dict()]
						#create entry in num_images_dict if num_images_per_est_base not there and initialize counter to 1
						if num_images_per_est_base not in set(state_counter[state][1].keys()):
							state_counter[state][1][num_images_per_est_base] = 0
						
						#check that destination path exists. if not create it
						if not os.path.exists(dst_dir):
							os.makedirs(dst_dir)
						else:
							#if already exists, get largest estab number to initialize state_counter
							file_list_dst = [file for file in os.listdir(os.path.join(dst_dir)) if ext == os.path.splitext(file)[1]]
							if len(file_list_dst)>0:
								state_counter[state][0] = max([int(file.split('_')[3]) for file in file_list_dst])
								print 'state '+state +' folder already exists. starting on '+str(state_counter[state][0])
							
						#walk through files in that directory
						for file in file_list:
							#get src of file name
							src = os.path.join(root, file)
							#get file extension
							src_ext = os.path.splitext(file)[1]
							#initailize establishment counter
							estab_counter = state_counter[state][0]	
							#file counter within num_images_per_est_base
							file_counter = state_counter[state][1][num_images_per_est_base] + 1
							#figure out where we are in the counter and increment estab_counter if at end
							if divmod(file_counter, num_images_per_est_base)[1] == 1 or num_images_per_est_base==1:
								estab_counter += 1

							#construct destination name. This will rename to state abbrevatiations rather than full state name	
							dst = os.path.join(dst_dir, '_'.join([year,ind,state, str(estab_counter), str(file_counter)])+src_ext)
							
							#print 'src: ' + src + ' dst: '+dst
							#copy the file over. check that file doesn't exist first
							if not os.path.isfile(dst):
								shutil.move(src, dst)
							else:
								print 'File: '+dst+' already exists'
				
							#dump the dict of files moved by state to disk
							with open(os.path.join(dst_dir, 'file_move_manifest_'+ts+'_'+state+'.txt'), 'w+') as file_write:
								json.dump(state_counter[state][2], file_write)
							
							#update the dictionaries
							state_counter[state][0] = estab_counter
							state_counter[state][1][num_images_per_est_base] = divmod(file_counter, num_images_per_est_base)[1]
							state_counter[state][2][src]=dst
						
						try: 
							os.rmdir(root)
							print root + ' removed'
						except OSError as ex:
							print root+' not empty'
						
				#else:
					#print root+" is not a good root"
	
