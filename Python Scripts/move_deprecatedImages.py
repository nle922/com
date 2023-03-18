
import glob, re, shutil, os
home_dir = '/Users/nlz1/Dropbox (SES1459263)/Original Images'
f=open(home_dir+'/Deprecated/LA_MS_images_copied.txt', 'w+')
f.write('Manifest of LA and Mississippi files copied into Industry folders\n')
f.write('Note that we will not copy over images in industries that have not been fully collected as of 9/20/2015.\n\n')
#these are industries that already have cleaned versions of the images from these states
list_inds = set(['101', '118', '121', '1008', '1005', '130', '314', '705'])
sub_pattern = '(_|-)(?P<state>.*?)(_|-)(?P<indnum>.*?)(_|-)'

for year in [1929, 1931, 1933, 1935]:
	pattern = str(year)+sub_pattern
	pattern = re.compile(pattern)
	for state in ['Louisiana', 'Mississippi']:
		cur_dir = home_dir+'/Deprecated/'+str(year)+'/'+state
		for file in glob.glob(cur_dir+'/*.jpg'):
			file_name = file.split('/')[-1]
			parsed_file = pattern.match(file_name)
			if parsed_file:
				new_dir = home_dir + '/'+str(year)+'/'+parsed_file.group('indnum')
				new_dir2 = home_dir+'/'+str(year)+'/'+parsed_file.group('state')
				if parsed_file.group('indnum') not in list_inds:
					if os.path.exists(new_dir) and not os.path.exists(new_dir+'/'+file_name):
						shutil.copy(cur_dir+'/'+file_name, new_dir+'/'+file_name)
						f.write('Copied: '+file_name+' to '+new_dir+'\n')
					elif os.path.exists(new_dir2) and not os.path.exists(new_dir2+'/'+file_name):
						shutil.copy(cur_dir+'/'+file_name, new_dir2+'/'+file_name)
						f.write('Copied: '+file_name+' to '+new_dir2+'\n')
					else:
						f.write('Did not copy: '+file_name+'\n')
			else:
				f.write('Did not copy: '+file_name+'\n')
f.close()