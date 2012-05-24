#!/usr/bin/env python
# Check to see if the requests module is available

try:
    import requests
    imported = True
except ImportError:
    imported = False
    
if imported: 
	print "requests is available"
