#this writes do files for renaming of BR industries

root_user='/Users/nlz1'
letters_fixed = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm','n','o','p','q','r','s','t','u','v','w','x','y','z']
letters_forward = ['b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm','n','o','p','q','r','s','t','u','v','w','x','y','z', 'a']
dict_forward = dict(zip([letter.upper() for letter in letters_fixed], [letter.upper() for letter in letters_forward]))
Aprefix_ones=set(('1656_1929', '1008_1929', '631_1935'))

ind_dir = root_user+'/Dropbox (SES1459263)/Cleaning Scripts'
python_dir = root_user+'/Dropbox (SES1459263)/Python Scripts'

def update_col(a):
	
	a[-1]=dict_forward[a[-1]]
	if a[-1]=='A':
		if len(a)==1:
			a.append('A')
		else:
			a[0:len(a)-1] = update_col(a[0:len(a)-1])	

	return a
		
#these are just for stata. 
data_dir = '$rootDir_sheetsLegacy'
write_dir = '$rootDir_dataBR'
code_dir = '$dir_cleaning'

f1=open(python_dir+'/ind_cols_B1.txt','r')
dict_stringCols={}
for line in f1.readlines():
	split_line = line.split(',')
	if line !='\n':
		dict_stringCols[split_line[0]] =  split_line[1]
f1.close()

for ind_pair in dict_stringCols.keys():

	indnum = ind_pair.split('_')[0]
	year = int(ind_pair.split('_')[1])
	col_name=[temp.lower().strip('\'') for temp in  dict_stringCols[ind_pair].split('\t')]
	pdspl = 0+(year==1933)
	prev_col=""
	#ind_pairs where spreadsheet has A1 rather than A0 suffix
	if ind_pair in Aprefix_ones:
		Aprefix = '1'
	else:
		Aprefix ='0'
	
	f=open(ind_dir+'/'+str(year)+'/clean_'+ind_pair+'_B.do', 'w+')
	f.write('//Cleaning script for BR "B" spreadsheet: '+ind_pair+'. Generated by write_renamingFiles_B.py and ind_cols_B.txt, which has NLZ\'s renaming of BR variables.\n')
	f.write('//Note that variable `home_dir\' is set outside the script and setup to be run from build_BR_legacy.do.\n')
	f.write('//If you want to run this file directly, change data_dir and globals $rootDir_sheetsLegacy, $dir_cleaning .\n')
	f.write('clear\n')
	f.write('local data_dir = "'+data_dir+'/'+str(year)+'/'+str(indnum)+'"\n')
	f.write('import excel "`data_dir\'/' +(len(indnum)==3)*'0'+indnum+str(year-1900)+'B'+Aprefix+pdspl*'_PDSPL'+'.xls", allstring sheet("'+(len(indnum)==3)*'0'+indnum+str(year-1900)+'B'+Aprefix+'")\n')
	f.write('drop in '+str(pdspl+1)+'\n')
	current_col = ['A']

	for i in col_name:

		if i[0:2]=="cc" or i[0:2]=="ca" or i[0:6]=="remark" or i[0:5]=="check" or i[0:4]=="diff" or i[0:3]=="chk" or ''.join(current_col)=="A" or ''.join(current_col)=="B" or ''.join(current_col)=="C" or ''.join(current_col)=="D" or ''.join(current_col)=="E" or ''.join(current_col)=="F":
			f.write('capture drop '+''.join(current_col)+' //Column name in spreadsheet: '+i+'\n')
		elif i=='cost' and prev_col[0:4]=="ff00":
			f.write('capture rename '+''.join(current_col) +' '+ "ff00"+prev_col[5]+'v\n')
		else:
			f.write('capture rename '+''.join(current_col) +' '+ i+'\n')
		current_col = update_col(current_col)
		prev_col = i
	
	f.write('save "$rootDir_dataBR/' +str(year)+'/'+indnum+'/'+ind_pair+'_clean_B", replace\n')
	f.close()
