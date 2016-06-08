#!/usr/bin/env python

import json, sys, re, os

sys.path.append('./')

import TweetsLib as tlib

owner_dict = {}
propagation_dict = {}

fileName = '/Users/ashwinkumar/Desktop/ProcessedRetweet.txt'

with open(fileName,"r") as readHandle:
    for line in readHandle.readlines():
        strArray = line.split("\t")
        if len(strArray) == 3:
            currentUser = strArray[1]
            immideateOwner = strArray[2]
            strArray = None
            if immideateOwner.lstrip().strip() == "N/A,N/A":
                owner_dict.update({currentUser: "1"})
            else:
                tempArray = currentUser.split(",")
                timestamp = tlib.convertStringToTimestamp(tempArray[0])
                if propagation_dict.has_key(timestamp):
                    prop_arr = propagation_dict[timestamp]
                    prop_arr.append(currentUser+"\t"+immideateOwner)
                    propagation_dict[timestamp] = prop_arr
                else:
                    prop_arr = []
                    prop_arr.append(currentUser + "\t" + immideateOwner)
                    propagation_dict.update({timestamp:prop_arr})
readHandle.close()

for key in owner_dict.keys():
    print key

for key in sorted(propagation_dict):
    print propagation_dict[key]


