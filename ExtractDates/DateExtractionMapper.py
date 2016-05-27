#!/usr/bin/env python
import json, sys
sys.path.append('./')
import TweetsLib as tlib

for line in sys.stdin:
    try:
        # Load Tweets
        parsed_json_tweets = json.loads(line)
        # Extract date created
        this_tweet_timestamp = parsed_json_tweets['created_at'].lstrip().strip()
        print "%s,1" %(tlib.extractDateFromTimestamp(this_tweet_timestamp))
        ownerName = "N/A"
        ownerTimeStamp = "N/A"
        if 'retweeted_status' in parsed_json_tweets:
            ownerTimeStamp = parsed_json_tweets['retweeted_status']['user'][
                'created_at'].lstrip().strip()
        print "%s,1" % (tlib.extractDateFromTimestamp(ownerTimeStamp))
    except ValueError:
        continue