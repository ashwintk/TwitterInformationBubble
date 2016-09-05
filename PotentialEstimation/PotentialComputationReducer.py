#!/usr/bin/env python
import sys

sys.path.append('./')

# Initialize the last date combo to none
lastDateCombo = None
lastPotential = 0

for line in sys.stdin:
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

if dateCombo == lastDateCombo:
    print '%s\t%s' % (lastDateCombo, lastPotential)