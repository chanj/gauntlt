#!/usr/bin/env python
# Evaluate the cookies returned from a target

import requests
import sys

target = sys.argv[1]
if not requests.utils.urlparse(target).scheme:
	target = 'http://' + target

req = requests.get(target)

cookies = {cookie.name:[cookie.secure, cookie._rest] for cookie in req.cookies}

for k, v in cookies.items():
	print k, v
