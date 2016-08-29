#!/usr/bin/env python
import sys, os
from itertools import chain, imap
from dateutil import parser
from datetime import timedelta as td
sys.path.append('./')
import TweetsLib as tlib

# This class is used to represent the users who tweet as tree data structure
class twitter_user:
    # Init method to initialize a twitter user node
    def __init__(self, value):
        self.value = value
        self.children = []
    # Iterate method to iterate over the entire tree
    def __iter__(self):
        for v in chain(*imap(iter, self.children)):
            yield v
        yield self.value
    # This method adds a child to the tree
    def addChild(self,value):
        self.children.append(value)
# This method iterates through the entire tree recursively and adds a child node to appropriate node
# Arguments:
            #1. Root Node of the tree
            #2. Node in tree for which a child node must be created
            #3. Value of the child node
# This function doesn't return anything
def addChildIfOwnerExistsInTree(twitter_obj, value, childToAppend):
    if twitter_obj.value.strip().lstrip() == value.strip().lstrip():
        twitter_obj.addChild(twitter_user(childToAppend))
    elif len(twitter_obj.children) == 0 and twitter_obj.value != value:
        return
    else:
        for child in twitter_obj.children:
            addChildIfOwnerExistsInTree(child, value, childToAppend)

# This method iterates through the entire tree recursively to find if a node is present in a tree
# Arguments:
            #1. Root Node of the tree
            #2. Node in tree fwhose existance must be checked
# This function returns true if the node of interest is found
def checkIfANodeExistsInTree(twitter_obj, value):
    if twitter_obj.value.strip().lstrip() == value.strip().lstrip():
        return True
    elif len(twitter_obj.children) == 0 and twitter_obj.value != value:
        return None
    else:
        for child in twitter_obj.children:
            checkIfANodeExistsInTree(child, value)
# Dictionary to temporarily store the levels of a tweet
myLevels = {}
# This method extracts levles of a tweet from a tree recursively
# Arguments:
            # 1. Root Node of the tree
            # 2. Level count (Initially it will be zero, since it is a recursive method, it will be incremented as desired)
# This function returns nothing, but populates the dictionary declared above
def extractLevelsFromATree(twitter_obj, level_count):
    if len(twitter_obj.children) >= 0:
        (ts,_) = twitter_obj.value.strip().lstrip().split(",")
        if ts != "root":
            thisDate = tlib.extractDateFromTimestamp(ts)
            if not myLevels.has_key(str(thisDate)):
                myLevels.update({str(thisDate): str(level_count)})
            else:
                dict_val = myLevels[str(thisDate)]
                dict_val += "," + str(level_count)
                myLevels.update({str(thisDate): dict_val})
        for child in twitter_obj.children:
            extractLevelsFromATree(child, level_count+1)
    else:
        return
# Initialize the tree with a dummy node
owner = twitter_user("root,root")
# Get the start and end date passed from command line
startDate = parser.parse(os.environ["START_DATE"])
endDate = parser.parse(os.environ["END_DATE"])
# This date list will contain the dates from the start to the end date
date_list = [str((startDate + td(days=x)).date()) for x in range(0, (endDate-startDate).days)]
# Initialize the last tweet to none
last_tweet = None

# for every tweet read
for line in sys.stdin:
    # Split the line to tweet, current owner infor and previous owner info.
    (this_tweet, this_owner, prev_owner) = line.strip().lstrip().split("\t")
    # You should change the code in mapper to avoid the following two lines
    prev_owner_arr = prev_owner.split(",")
    prev_owner = prev_owner_arr[1]+","+prev_owner_arr[0]
    # There is no grouping operation in hadoop streaming, so check if previous tweet and current tweet are the same
    if last_tweet != this_tweet:
        if last_tweet is not None:
            # If the last encountered tweet and the current tweet are different, we will have to process the propagation
            extractLevelsFromATree(owner, 0)
            owner = twitter_user("root,root")
            this_propagation = ['0'] * (endDate - startDate).days
            for key in myLevels.keys():
                if key in date_list:
                    this_propagation[date_list.index(key)] = myLevels[key]
            myLevels = {}
            print last_tweet + "\t" + "\t".join(this_propagation)
            this_propagation = []
        last_tweet = this_tweet
    # If the last encountered tweet and the current tweet are the same, append it to the array
    if prev_owner == "N/A,N/A":
        owner.addChild(twitter_user(this_owner))
    else:
        if checkIfANodeExistsInTree(owner, prev_owner) is not True:
            owner.addChild(twitter_user(prev_owner))
        addChildIfOwnerExistsInTree(owner, prev_owner, this_owner)

if last_tweet == this_tweet:
    # If the last encountered tweet and the current tweet are different, we will have to process the propagation
    extractLevelsFromATree(owner, 0)
    owner = twitter_user("root,root")
    this_propagation = ['0'] * (endDate - startDate).days
    for key in myLevels.keys():
        if key in date_list:
            this_propagation[date_list.index(key)] = myLevels[key]
    myLevels = {}
    print this_tweet + "\t" + "\t".join(this_propagation)
    this_propagation = []
    last_tweet = this_tweet