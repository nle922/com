#script for first step in building the dictionary necessary to download all images
#this will need to be run with administrator privileges

#Dependencies: bs4, selenium, PhantomJS
from bs4 import BeautifulSoup
from selenium import webdriver

#in standard python distro
import json
import re
from string import Template
import os
import time

if __name__ == '__main__':

    #parameters to be set
    user = 'nlz0003'
    #filename of dict_archive in memory
    filename_archive = os.path.join('/Users', user,'Dropbox (SES1459263)', 'Python Scripts', 'dictionary_archive.txt')
    #time to sleep to let page load in seconds
    time_sleep = 10
    #set year of data
    year = '1929'
    #page numbers to gather. if blank will do all between 1:max_pages
    get_pages=[]
    #set parent ID of record. 
    parentID = '2790961'
    #set path for chromedriver
    chromedriver = os.path.join('/Users', user, 'Dropbox (SES1459263)', 'Python Scripts', 'chromedriver')
    #set environment global for path to chrome driver
    os.environ['webdriver.chrome.driver'] = chromedriver
	#resave csv version of the citionary
	resave_csv = 1
	#filename of csv version where columns are values of dictionary and row are the Identifiers
	filename_csv = os.path.join('/Users', user,'Dropbox (SES1459263)', 'Python Scripts', 'dictionary_archive.csv')
	
    #these should not be modified
    #regular expressions for matching identifiers 
    prog_identifier = re.compile(r"/id/(?P<Identifier>\d+)\?")
    #regular expression for matchign state & industry #. Maybe anchor this as beginning of line?
    prog_state_ind = re.compile(r"(?P<state>.*): Industry No\. (?P<indnumber>\d{3,4})")
    #regular expression for page numbers
    prog_num_pages = re.compile(r"of +(?P<num_pages>\d+)")
    #keep track of pages gather
    page_numbers=set([])
    #number of pages to build dictionary from
    num_pages = 0
    
    #set top level Search URL template
    toplevelurl_template = Template('https://catalog.archives.gov/search?q=*:*&f.parentNaId=${parentID}&f.level=fileUnit&sort=naIdSort%20asc&rows=100${offset}')

    #Step 0: Setup dictionary of industry-state items to get images for
    #key - Identifer, value =dict{state, industry, searchurl, toplevelurl_images, # images}    
    if os.path.exists(filename_archive):
        #load most recent version of dictionary archive
        #note that rest of this code could be put in different script
        dict_archive = json.load(open(filename_archive, 'r'))
    else:
        dict_archive={}

    driver = webdriver.Chrome(chromedriver)
    #create instance of headless browser to render the JS
    #driver=webdriver.PhantomJS()
    if num_pages==0 or get_pages==[]:
        #Step 1: get all identifiers and associated state-industry 
        driver.get(toplevelurl_template.substitute(parentID=parentID, offset=''))
        time.sleep(time_sleep)
        toplevelurl_parsed = BeautifulSoup(driver.page_source, 'html.parser')
        #print toplevelurl_template.substitute(parentID=parentID, offset='')

        for link in toplevelurl_parsed.find_all('span'):
            #check that string is not blank
            if link.string is not None:
                #try to find the num of pages that need to be clicked through
                m = prog_num_pages.search(link.string)
                if m is not None:
                    #keep going if find num_pages = 1
                    if int(m.group('num_pages'))>1:
                        num_pages = int(m.group('num_pages'))
                        print 'num_pages = ' + str(num_pages)
                        break

    if num_pages<=1:
        print 'Did not find num_pages greater than 1s'
        print toplevelurl_parsed
        
    #if empty and found some number of pages, then do all the pages
    if num_pages > 1 and get_pages==[]:
        get_pages = range(1, num_pages+1)
    
    #walk through each page up to num_pages
    for page_number in get_pages:

        print 'working on ' + str(page_number) + ' of ' +str(num_pages) +' total pages'
        #walk through the pages. just reload for pages after 1
        if page_number > 1:
            #this is how other page URLs are structured
            offset = '&offset='+str(100*(page_number-1))		
            driver.get(toplevelurl_template.substitute(parentID=parentID, offset=offset))
            time.sleep(time_sleep)
            toplevelurl_parsed = BeautifulSoup(driver.page_source, 'html.parser')
    
        #look through all the entries with the right tag 'a' to try to find the right one
        for link in toplevelurl_parsed.find_all('a'):
            #check that link href is not blank
            if link.get('href') is not None:
                #get href attribute from link
                m_href=prog_identifier.search(link.get('href'))

                if m_href is not None:
                    #if we have a match, extract the Identifier for later			
                    Identifier = m_href.group('Identifier')
                    #print 'found ' + Identifier
                
                    #if not in keys of dict_archive, then add to it
                    if Identifier not in dict_archive.keys():
                        m = prog_state_ind.search(link.string)
                        if m is not None:
                            #save info to temporary dictionary
                            dict_info={}
                            dict_info['state']=m.group('state')
                            print m.group('state')
                            dict_info['indnumber'] = m.group('indnumber')
                            dict_info['max_images'] = 0
                            dict_info['orderItem'] = 0 
                            dict_info['page_number']= page_number
                            dict_info['images_downloaded'] = []
                            page_numbers.add(page_number)
                            #save info for each Identifier    
                            dict_archive[Identifier]=dict_info

                            #write dictionary to file. this will write over the file every time.
                            with open(filename_archive, 'w+') as write_out:
                                json.dump(dict_archive, write_out)

    if page_numbers!=set(get_pages):
        print 'get_pages is not equal to page_numbers. Rerun for following pages:'
        print set(get_pages) - page_numbers

	#write out to csv for easy reading into Excel 
	if not os.path.exists(filename_csv) or resave_csv:
		df = pandas.DataFrame(dict_archive)
		df = df.transpose()
		df.to_csv(filename_csv)
    driver.quit()
