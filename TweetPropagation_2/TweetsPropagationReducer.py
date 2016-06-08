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
    
    
    ''' My Code '''
    class Tweet:
    ''' Input expected in the order of <TEXT>\t<TIMESTAMP>\t
    <USER HANDLE>\t<OWNER Handle>\t<ORIGINAL TIMESTAMP>'''
    def __init__(self, *args): '''takes the input '''
	    self.text = args[0]
        self.timestamp = args[1]
        self.user = args[2]
        self.owner = args[3]
        self.own_timestamp = args[4]
        self.level = 0

    def is_retweet(self):
        if self.owner == "N/A":
            return False;
        return True
    def print_tweet(self):
        print self.text, self.user, self.timestamp, self.owner, self.own_timestamp
tweet_list= []

def read_input(inputFile): ''' reads input file '''
    with open(inputFile,"r") as input:
        for line in input:
            line = line.split("\t")
            tweet = Tweet(*line)
            tweet_list.append(tweet)   
        tweet_list.sort(key= lambda Tweet: Tweet.timestamp, reverse=False) ''' inbuilt sort function '''
def tweet_propagation():
    dic = {}
    length = len(tweet_list)
    for i in range(0, length):
        if tweet_list[i].is_retweet():
            continue
        temp_list = [tweet_list[i]]
        for j in range(i, length):
            if tweet_list[j].is_retweet() and (tweet_list[i].text == tweet_list[j].text) and (tweet_list[i].user == tweet_list[j].owner):
                for tweet in temp_list:
                    if tweet.user == tweet_list[j].owner:
                        tweet_list[j].level = tweet.level +1 '''incrementing the previous level after the match is made '''
                        break
                temp_list.append(tweet_list[j])
        if tweet_list[i].user in dic:
            dic[tweet_list[i].user][tweet_list[i].text] = temp_list[1:]
        else:
            dic[tweet_list[i].user]={}
            dic[tweet_list[i].user][tweet_list[i].text] =temp_list[1:]
    return dic
read_input("output.txt") ''' input file named output.txt is read '''
dic=tweet_propagation()
count=0
for user in dic :
    for tweet in dic[user]:
        li = dic[user][tweet]
        for tweetObj in li:
            print tweetObj.timestamp
            print tweetObj.level
            count +=1
        print
    print


