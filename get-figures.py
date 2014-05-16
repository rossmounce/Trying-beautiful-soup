#!/usr/bin/python
from bs4 import BeautifulSoup
import sys
import getopt 
import os



soup = BeautifulSoup (open(sys.argv[1]))
divfig = soup.find_all('div', class_="fig")


datadir = sys.argv[1]
chomped = datadir[:-5]
#GIFs
file = open("./"+chomped+"/"+chomped+"-jpg.txt", "wb")

for link in soup.find('h5'):
    #print(link.get('href'))
    baseurl = link.get('href')
    #print baseurl

for tr in divfig:
    for link in tr.find_all('img', src=True):
        fullink = link.get ('src').encode("utf8")
	sep = '/bmc'
        rest = baseurl.split(sep, 1)[0]
        file.write(rest+fullink[:-4]+".jpg"'\n')

file.flush()
file.close()

datadir = sys.argv[1]
chomped = datadir[:-5]
#CAPTIONS
file = open("./"+chomped+"/"+chomped+"-caps.txt", "wb")

for tr in divfig:
    for link in tr.find_all('p'):
        plaintext = link.get_text ()
        oneline = plaintext.replace('\n',' ').replace('          ',' ').encode("utf8")
        print "done "+chomped
        file.write(oneline+'\n')

file.flush()
file.close()


