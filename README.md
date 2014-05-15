Trying-beautiful-soup
=====================

Trying out beautiful soup in an IPython notebook, on BMC journal article HTML with a view to parsing out figure captions

I'm perfectly aware I can import urllib2 to get html directly but in this instance I want to run off-local files.
HTML pages that require subscription access, or that are only temporarily 'free access' mean that local files might be better option in the long run.

# Acknowledgements

Initially, I'm going from this guide: http://programminghistorian.org/lessons/intro-to-beautiful-soup (very pretty!)

# Installation

requirements:

IPython, ipython-notebook, Beautiful Soup, (and dependencies...)

* sudo apt-get install ipython-notebook
* sudo apt-get install python-bs4  # I've seen websites that say it's python-beautifulsoup4: this is all lies!
