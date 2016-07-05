#!/usr/bin/env python
import sys

dateArray =[]

for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip().lstrip()
    # parse the input we got from mapper.py
    tempArray = line.split(',')
    if len(tempArray) == 2:
        if tempArray[0] not in dateArray:
            dateArray.append(tempArray[0])

for item in dateArray:
    print "%s,1" %(item)