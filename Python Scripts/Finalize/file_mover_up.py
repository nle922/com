#this moves files up from subdirectories
import os, shutil, json

if __name__ == '__main__':
	#set common file prefix
	year = '1931'
	ind = '101'
	delimiter = ' - '
	#set directory to clean up
	dir_to_clean = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images', year, ind)
	#correct extension
	correct_ext = '.jpg'

	#walk through the top directory
	for root, dirs, files in os.walk(dir_to_clean):
		#walk through subdirectories
		for dir in dirs:
			current_dir = os.path.join(root,dir)
			#loop over files in subdirectory
			for src in os.listdir(current_dir):
				src = os.path.join(dir_to_clean, src)
				#check that this is actually a file and has the right extension
				if os.path.isfile(src) and ext == correct_ext:
					try:
						#name of file to write
						dst = os.path.join(dir_to_clean, file)
						#move the file over
						shutil.move(src, dst)
					except:
						print('Crashed on '+ file)

				#remove empty directories
				if len(os.listdir(current_dir)) == 0: # Check if the folder is empty
		    		shutil.rmtree(current_dir)
