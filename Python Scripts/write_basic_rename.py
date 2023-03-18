import pickle, os
dir_root = '/Users/nlz1/Dropbox (SES1459263)/Cleaning Scripts/Wrappers/'
dir_dict = '/Users/nlz1/Dropbox (SES1459263)/Python Scripts/'

use_file = 0
add_to = 1

f1 = open(dir_root+'basic_rename.do', 'w+')

if add_to: 
	f=open(dir_dict+'/General/add_to.txt', 'r+')
	#f should have lines like capture rename new_key new_value
	data_dict = pickle.load(open(dir_dict+'/dict_var_rename.txt', 'r+'))

	for line in f.readlines():
		new_key = line.split(' ')[0]
		new_value = line.split(' ')[1].rstrip()
		print 'New Key: '+new_key+' New value: ' + new_value
		data_dict[new_key] = new_value

	f.close()
	pickle.dump(data_dict, open(dir_dict+'/dict_var_rename.txt', 'w+'))
	os.remove(dir_dict+'/add_to.txt')

if use_file:
#read from basic_renameOld
	f=open(dir_root+'basic_renameOld.do', 'r+')
	dict_rename={}
	for line in f.readlines():
		words = line.split(" ")
		if words[0]=="capture" and words[1]=="rename":
			dict_rename[words[2]]=words[3]
	pickle.dump(dict_rename, open(dir_dict+'dict_var_rename.txt', 'w+'))
	f.close()
else:
	#going forward read from the dictionary file and if new variables, then should add to the dictionary.
	dict_rename=pickle.load(open(dir_dict+'dict_var_rename.txt', 'r+'))
	
f1.write('//Script to rename variables in legacy industries to CK convention\n')

for var_rename in dict_rename.keys():

	renamed_variable = dict_rename[var_rename].rstrip()
	if len(renamed_variable)>5 and renamed_variable[0:3]=='emh':
		renamed_variable = 'emh'+renamed_variable[-2]+renamed_variable[-1]
		dict_rename[var_rename]=renamed_variable
		
	f1.write('capture confirm variable '+renamed_variable+'\n')
	f1.write('if _rc==0 { \n') 
	f1.write('do "$dir_cleaning/General/fix_rename.do" '+var_rename+' '+renamed_variable+'\n')
	f1.write('} \n else {\n')
	
	f1.write('capture rename '+var_rename+' '+renamed_variable+'\n')
	f1.write('}\n\n')

pickle.dump(dict_rename, open(dir_dict+'dict_var_rename.txt', 'w+'))
f1.write('local counter = 1\n foreach i in coal_anthracite coal_bituminous coke fuel_oils gasoline natural_gas manufactured_gas blast_furnace_gas {\n capture rename `i\'_cost ff00`counter\'c\ncapture label var ff00`counter\'c "Fuel used: `i\', cost"\n capture rename `i\'_quantity ff00`counter\'q\n capture label var ff00`counter\'q "Fuel used: `i\', quantity"\n local counter = `counter\'+1\n }\n')
f1.write('local counter = 1\n foreach i in coal_anthracite coal_bituminous coke fuel_oils gasoline natural_gas manufactured_gas blast_furnace_gas {\n capture rename `i\'_value ff00`counter\'c\ncapture label var ff00`counter\'c "Fuel used: `i\', cost"\n capture rename `i\'_quantity ff00`counter\'q\n capture label var ff00`counter\'q "Fuel used: `i\', quantity"\n local counter = `counter\'+1\n }\n')

f1.close()
