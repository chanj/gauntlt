#!/usr/bin/env python
# Test to see how a target responds to various HTTP methods

import requests
import sys

# Methods to test. These methods should not be accepted by the target.
# put and connect are other possible candidates
bad_methods = ('delete', 'patch', 'trace', 'track', 'bogus')

# Acceptable status codes - getting these results in a PASS.
good_codes = (403, 405, 501)

target = sys.argv[1]

if not requests.utils.urlparse(target).scheme:
	target = 'http://' + target
	
def method_check(method):
	try:
		req = requests.request(method, target)
		return req.status_code
	except:
		return "TEST ERROR"

def main():
	for method in bad_methods:
		status = method_check(method)
		if status in good_codes:
			result = 'PASS'
		else:
			result = 'FAIL'
		print ' : '.join((result, method))

if __name__ == '__main__':
	main()
