import sys, re, os
from itertools import chain, imap
from dateutil import parser
import TweetsLib as tlib
from datetime import timedelta as td

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
# This method iterates through the entire tree recursively.
def addChildIfOwnerExistsInTree(twitter_obj, value, childToAppend):
    if twitter_obj.value.strip().lstrip() == value.strip().lstrip():
        twitter_obj.addChild(twitter_user(childToAppend))
    elif len(twitter_obj.children) == 0 and twitter_obj.value != value:
        return
    else:
        for child in twitter_obj.children:
            addChildIfOwnerExistsInTree(child, value, childToAppend)

# This method iterates through the entire tree recursively.
def checkIfANodeExistsInTree(twitter_obj, value):
    if twitter_obj.value.strip().lstrip() == value.strip().lstrip():
        return True
    elif len(twitter_obj.children) == 0 and twitter_obj.value != value:
        return None
    else:
        for child in twitter_obj.children:
            checkIfANodeExistsInTree(child, value)

myLevels = {}

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


fileName = '/Users/ashwinkumar/Desktop/temp'
owner = twitter_user("root,root")
startDate = parser.parse("05/01/2015")
endDate = parser.parse("12/01/2015")
date_list = [str((startDate + td(days=x)).date()) for x in range(0, (endDate-startDate).days)]
last_tweet = None

with open(fileName,"r") as readHandle:
    for line in readHandle.readlines():
        (this_tweet, this_owner, prev_owner) = line.strip().lstrip().split("\t")
        prev_owner_arr = prev_owner.split(",")
        prev_owner = prev_owner_arr[1]+","+prev_owner_arr[0]
        #print "Processing tweet: " + this_tweet+", current owner: "+this_owner+", previous owner: "+prev_owner
        # There is no grouping operation in hadoop streaming, so check if previous tweet and current tweet are the same
        if last_tweet != this_tweet:
            #print " Encountering a new tweet "
            if last_tweet is not None:
                # If the last encountered tweet and the current tweet are different, we will have to process the propagation
                extractLevelsFromATree(owner, 0)
                owner = twitter_user("root,root")
                this_propagation = ['0'] * (endDate - startDate).days
                for key in myLevels.keys():
                    if key in date_list:
                        this_propagation[date_list.index(key)] = myLevels[key]
                        #print "key: " + key + " value: " + myLevels[key]
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
        #print list(iter(owner))
readHandle.close()

if last_tweet == this_tweet:
    #print " Finishing up the last tweet"
    #print list(iter(owner))
    # If the last encountered tweet and the current tweet are different, we will have to process the propagation
    extractLevelsFromATree(owner, 0)
    owner = twitter_user("root,root")
    this_propagation = ['0'] * (endDate - startDate).days
    for key in myLevels.keys():
        if key in date_list:
            this_propagation[date_list.index(key)] = myLevels[key]
            #print "key: " + key + " value: " + myLevels[key]
    myLevels = {}
    print this_tweet + "\t" + "\t".join(this_propagation)
    this_propagation = []
    last_tweet = this_tweet