Trying-beautiful-soup
=====================

Trying out beautiful soup in an IPython notebook, on BMC journal article HTML with a view to parsing out figure captions

I'm perfectly aware I can import urllib2 to get html directly but in this instance I want to run off-local files.
HTML pages that require subscription access, or that are only temporarily 'free access' mean that local files might be better option in the long run.

# Acknowledgements

* Initially, I'm going from this guide: http://programminghistorian.org/lessons/intro-to-beautiful-soup (very pretty!)
* There's also the official docs here: http://www.crummy.com/software/BeautifulSoup/bs4/doc/
* Looks like there's also been a Software Carpentry session on this in 2013 at KU: http://nbviewer.ipython.org/github/kcranston/2013-08-ku/blob/master/beautifulsoup/notebooks/00-BeautifulSoup-FULL.ipynb 
* Some debugging help from people on Twitter too. Thx @srp

# Installation

requirements:

I used python 2.7.6. When I tried on an older machine with python 2.7.3 it didn't work :S
IPython, ipython-notebook, Beautiful Soup, (and dependencies...)

* sudo apt-get install ipython-notebook
* sudo apt-get install python-bs4  # I've seen websites that say it's python-beautifulsoup4: this is all lies!

# Running it

* Run bash create_subfolders.sh first to create a subfolder for each html file (I would do this in the python script if I knew how!)
* Iterate over each html file, applying the beautiful soup python script to each:
```
bash create_subfolders.sh ;
for i in *.html ; do python get-figures.py $i ; done ;
bash download-figs.sh ;
bash remove-apos.sh ; #Removes all apostrophes from all caption plaintext files
bash embedxmpdesc.sh ; # this calls on "doexif.sh" so make sure its executable
```

bash create_subfolders can be happily re-run without losing what has been done in the next two lines
