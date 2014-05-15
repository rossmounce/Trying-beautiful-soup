#!/usr/bin/python
from bs4 import BeautifulSoup
import sys, getopt


soup = BeautifulSoup (open(sys.argv[1]))
divfig = soup.find_all('div', class_="fig")
#print(divfig)

#IMAGE LINKS
file = open(sys.argv[1]+"-URLs.txt", "wb")

for tr in divfig:
    for link in tr.find_all('a'):
        fullink = link.get ('href').encode("utf8")
        print fullink #print in terminal to verify results
        file.write(fullink+'\n')

file.flush()
file.close()

#CAPTIONS
file = open(sys.argv[1]+"-caps.txt", "wb")

for tr in divfig:
    for link in tr.find_all('p'):
        plaintext = link.get_text ()
        oneline = plaintext.replace('\n',' ').replace('          ',' ').encode("utf8")
        print oneline
        file.write(oneline+'\n')

file.flush()
file.close()

