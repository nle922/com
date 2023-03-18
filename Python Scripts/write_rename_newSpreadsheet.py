#this will generate a do file with lines that are rename `column_name'. Set the column to start at and teh column to end at
import os
#set some variables for path and industry and year we're interested in
industry_num="1401a"
year="1933"
python_dir = os.path.join('/Users','nlz0003','Dropbox (SES1459263)','Cleaning Scripts',year)

#filename where each line is name of column to be renamed too. can be empty and then will make a stub file
filename = os.path.join('/Users','nlz0003','Downloads', 'foo.txt')

#this shoudln't be changed
alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
letters_forward = [alphabet.pop()]+alphabet
letters_fixed = letters_forward[1:]+[letters_forward[0]]
dict_forward = dict(zip([letter.upper() for letter in letters_forward], [letter.upper() for letter in letters_fixed]))

#set col to start on
current_col=['B','E']
#set col to end on
end_col = ['G', 'H']


#function to update column
def update_col(a):
	
	a[-1]=dict_forward[a[-1]]
	if a[-1]=='A':
		if len(a)==1:
			a.append('A')
		else:
			a[0:len(a)-1] = update_col(a[0:len(a)-1])	

	return a

if __name__ == '__main__':
	
	content = []
	with open(os.path.join(python_dir,'clean_'+industry_num+'_'+year+'.do'),'w+') as f:
		if os.path.exists(filename):
			with open(filename, 'r') as fread:
				content = fread.readlines()	
			#strip whitespace and trailing spaces
			context = [x.strip() for x in content]
			#reverse order for popping
			content.reverse()
		
		f.write('//rename variables for industry '+industry_num+' in year '+year+'\n')
		while 1:
			if current_col ==end_col:
				break
			if len(content)>0:
				write_this_var=content.pop()
			else:
				write_this_var = 'gp_v_'
			
			f.write('rename '+''.join(current_col) +' '+ write_this_var+'\n')
			current_col = update_col(current_col)
		

