import json 

class Tweet:
    ''' Input for expected in the order of <TEXT>\t<TIMESTAMP>\t
    <USER HANDLE>\t<OWNER Handle>\t<ORIGINAL TIMESTAMP>'''
    def __init__(self, *args):
        self.timestamp = args[1]
        self.text = args[0]
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
    def __str__(self):
        return self.text+"\t"+self.user+"\t"+str(self.level)+"\t"+self.timestamp+"\t"+self.owner+"\t"+self.own_timestamp

tweet_list= []

def read_input(inputFile):
    with open(inputFile,"r") as input:
        for line in input:
            line = line.split("\t")
            tweet = Tweet(*line)
            tweet_list.append(tweet)   
        tweet_list.sort(key= lambda Tweet: Tweet.timestamp, reverse=False)
        
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
                        tweet_list[j].level = tweet.level +1
                        break
                temp_list.append(tweet_list[j])
        if tweet_list[i].user in dic:
            dic[tweet_list[i].user][tweet_list[i].text] = temp_list[1:]
        else:
            dic[tweet_list[i].user]={}
            dic[tweet_list[i].user][tweet_list[i].text] =temp_list[1:]
    return dic

def print_timeseries():
    with open('timeseries_output', 'w') as fp:
        for user in dic :
            for tweet  in dic[user]:
                li = dic[user][tweet]
                fp.write(tweet +": ")
                for tweetObj in li:
                    fp.write(tweetObj.timestamp+", ")
                fp.write("\n")

read_input("output.txt")
''' we can call the read_input on other files if required'''

dic=tweet_propagation()
print_timeseries();
count=0
with open('reducer_output.json', 'w') as fp:
    for user in dic :
        for tweet in dic[user]:
            li = dic[user][tweet]
            for tweetObj in li:
                fp.write(str(tweetObj))
                count +=1
                print tweetObj.level
            print
        print
    print count