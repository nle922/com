#Build manifest of image files
import os

if __name__ == '__main__':
	#set directory to clean up
	dir_to_clean = os.path.join('/Volumes/Dropbox/Dropbox (SES1459263)/Original Images', year, ind)
	#file extension
	extension = '.jpg|.JPG|.JPEG|.jpeg'

	#walk through the top directory
	for root, dirs, files in os.walk(dir_to_clean):
			for dir in dirs:
				current_dir = os.path.join(root,dir)
				#mainfst to write teh list of images to
				manifest = open(os.path.join(current_dir,'filelist.txt'), 'w')
				#loop over files in subdirectory
				for file in os.listdir(current_dir):
					if file.endswith(extension):
						manifest.write(file)
				manifest.close()
