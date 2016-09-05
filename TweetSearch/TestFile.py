import sys, os
from dateutil import parser
from datetime import timedelta as td

sys.path.append('./')

fileName = '/Users/ashwinkumar/Desktop/mapper_op.tsv'

# Initialize the last date combo to none
lastDateCombo = None
lastPotential = 0
with open(fileName, "r") as readHandle:
    for line in readHandle.readlines():
        (dateCombo, potential) = line.strip().lstrip().split("\t")
        potential = float(potential)
        if lastDateCombo == dateCombo:
            lastPotential += potential
        else:
            if lastDateCombo:
                # write result to STDOUT
                print '%s\t%s' % (lastDateCombo, lastPotential)
            lastDateCombo = dateCombo
            lastPotential = potential
readHandle.close()

if dateCombo == lastDateCombo:
    print '%s\t%s' % (dateCombo, potential)