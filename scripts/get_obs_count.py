#!/usr/bin/env python

import requests
import json

month = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
header = ["ID", "Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec", "Total"]

print "\t".join(header) 

f = open("../list", "r")
content = f.readlines()
content = [i.strip('\n') for i in content] 
for i in content:
    obs = [i]
    for j in month:
        target = "http://api.inaturalist.org/v1/observations?taxon_id={}&month={}&quality_grade=research".format(i,j)
        r = requests.get(url = target)
        x = json.loads(r.text)
        obs.append(x['total_results'])
    total = sum(obs[1:])
    obs.append(total) 
    print "\t".join([str(k) for k in obs])
