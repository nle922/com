import pickle, os
data_dir = '/Users/nlz/Dropbox (SES1459263)/Python Scripts'
f=open(data_dir+'/add_to.txt', 'r+')
#f should have lines like capture rename new_key new_value
data_dict = pickle.load(open(data_dir+'/dict_var_rename.txt', 'r+'))

for line in f.readlines():
	new_key = line.split(' ')[2]
	new_value = line.split(' ')[3].rstrip()
	print 'New Key: '+new_key+' New value: ' + new_value
	data_dict[new_key] = new_value

f.close()
pickle.dump(data_dict, open(data_dir+'/dict_var_rename.txt', 'w+'))
os.remove(data_dir+'/add_to.txt')