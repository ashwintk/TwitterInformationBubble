#!/usr/bin/env python
import sys

dateArray =[]

for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip().lstrip()
    if line not in dateArray:
        dateArray.append(line)

for item in dateArray:
    print item