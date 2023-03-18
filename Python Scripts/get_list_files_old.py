#this script walks recursively through Original Images with legacy images
#make sure you are in Python Scripts folder to start with
import pandas, os, pickle, re
from time import gmtime, strftime
#this is top level folder to index. will walk recursively through subfolders
home_folder = '/Users/nlz1/Dropbox (SES1459263)/Original Images'

path_to_database = '/Users/nlz1/Dropbox (SES1459263)/SES1459263 Team Folder'
#these are going to have to passed in somehow
#keys are year_ind and values are dictionaries with variable names (who_collected, ind_name, box, All pics collected for year-ind, Original Spreadsheet, Matching Est, Matching Firm, Cleaning Script, Wrapper Script, Complete (images, transcribed, cleaning scripts, firm and estab IDs) as keys and values as value
dict_inds = pickle.load(open('./legacy_industries.txt','r'))
year_ind_to_drop = 0
#set to 0 if don't want to reindex some year-industry. Otherwise set as 'Year/'Industry' i.e. to reindex industry 311 in 1929, set to '1929/311'

f_log = open(path_to_database+'/log_database.txt', 'a+')
f_log.write('At '+strftime("%Y-%m-%d %H:%M:%S", gmtime())+'Indexed: '+home_folder+'\n')
f_badImages = open(home_folder+'/bad_files', 'w+')
if year_ind_to_drop:
	#database better exist
	df_master = pickle.load(open(path_to_database+'/master_database', 'r'))
	df_master['Ind_Year']=df_master['Year'].astype(str)+'/'+df_master['IndNo'].astype(str)
	df_master.reset_index().set_index('Ind_Year').drop(df_master.index(year_ind_to_drop))
	df_master.reset_index().drop(columns='Ind_year')
	home_folder+='/'+year_ind_to_drop
else:
	df_master=pandas.DataFrame(columns=['TimeEntered', 'Year', 'State', 'IndNo', 'EstabNo', 'PageNo', 'IndName', 'who_collected', 'Box', 'flag_all_images', 'OriginalData', 'MatchingEstab', 'MatchingFirm', 'CleaningScript', 'WrapperCleaningScript', 'Note1', 'Note2', 'flag_complete'])

df_index = df_master.index
prog = re.compile(r"\.(pdf|jpg|tiff|JPG|JPEG|tif|bmp|JPEG|png)")
prog2 = re.compile(r"\d{4}_(?P<State>[a-zA-Z]*)_\d*_(?P<EstabNo>\d*)_(?P<PageNo>\d*)")
counter = 1
#walk recursively through home_folder
for root, subFolders, files in os.walk(home_folder):
	
	for filename in files:
		
		Year = root.split('/')[-2]
		IndNo = root.split('/')[-1]
		#check does the file have a vliad image extension
		if prog.search(filename):
			#delete existing entries and rewrite
			if filename in df_index:
				df_master.drop(filename, inplace=True)
				f_log.write('At '+strftime("%Y-%m-%d %H:%M:%S", gmtime())+'Removed: '+filename+'\n')
			if Year+'_'+IndNo in dict_inds.keys():
				dict_pass = dict_inds[Year+'_'+IndNo]
			dict_pass['TimeEntered'] = strftime("%Y-%m-%d %H:%M:%S", gmtime())
			dict_pass['IndNo']=IndNo
			dict_pass['Year']=Year
			#only write state, EstabNo, PageNo if can find it in the file name
			m = prog2.search(filename)
			if m:
				dict_pass['State']=m.group('State')
				dict_pass['EstabNo']=m.group('EstabNo')
				dict_pass['PageNo']=m.group('PageNo')
			df_master.loc[os.path.join(root,filename)]=pandas.Series(dict_pass)
		else:
			f_badImages.write(os.path.join(root,filename)+'\n')
		counter +=1
		if not counter % 1000:
			print 'Gone through '+str(counter)+' files'
			print 'In '+root
pickle.dump(df_master, open(path_to_database+'/master_database', 'w+'))
f_log.write('Finished indexing')
f_log.close()
#Bugs
#1. set permissions on the database file?
#2. Could handle file names more robustly if say industry and state were reversed
#3. Double check that entries in dict_inds are correct. 
#4. Update the dictionary with information on new industries collected. Right now just doesn't
#write this information for industry-years that haven't been added
