#Deletes extraneous fiels
import os, shutil, json

if __name__ == '__main__':
	#set common file prefix
	year = '1931'
	ind = '101'
	delimiter = ' - '
	#set directory to clean up
	dir_to_clean = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images', year, ind)

	#extensions of files to delete
	correct_ext = '.url'
	#prefixes of files to delete
	correct_prefix = 'file_move_manifest|filelist'

	#walk through the top directory
	for root, dirs, files in os.walk(dir_to_clean):
		#walk through subdirectories
		for dir in dirs:
			current_dir = os.path.join(root,dir)
			#loop over files in subdirectory
			for src in os.listdir(current_dir):
				#check that this is actually a file and has the right extension
				if src.startswith(correct_prefix) or ext == correct_ext:
					os.remove(os.path.join(dir_to_clean, src))
