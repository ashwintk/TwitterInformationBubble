#!/usr/bin/env python
import sys, os
from dateutil import parser
from datetime import timedelta as td

sys.path.append('./')
import TweetsLib as tlib

# Get the start date, end date and rho passed from command line arguments
startDate = parser.parse(os.environ["START_DATE"])
endDate = parser.parse(os.environ["END_DATE"])
rho = float(os.environ["RHO"])
# Initialize a date list based on the start and end dates
date_list = [str((startDate + td(days=x)).date()) for x in range(0, (endDate-startDate).days)]
# Read the distributed cache file and store them as an array
topicsArray = tlib.readFileandReturnAnArray("topicsArray", "r", True)

# This method is used to compute potential for a given level/list of levels seperated by a comma
def computePotential (current_level, rho):
    if current_level is None or current_level == "0" or "," not in current_level:
        return 0
    else:
        this_potential=0
        level_arr = current_level.strip().lstrip().split(",")
        for level in level_arr:
            if int(level) > 1:
                this_potential += pow(rho, int(level)-1)
        return this_potential

for line in sys.stdin:
    myarr = line.strip().lstrip().split("\t")
    for topic in topicsArray:
        if tlib.isWordInTweet(myarr[0],topic," "):
            for x in xrange(1,len(myarr),1):
                print topic+","+date_list[x-1]+"\t"+str(computePotential(myarr[x], rho))