import json, re
from Tkinter import Tk
from tkFileDialog import askopenfilename
import TweetsLib as tlib
Tk().withdraw()
inputFile = askopenfilename()
print "File to be processed "+inputFile

with open(inputFile, "r") as readHandle:
    for line in readHandle.readlines():
        try:
            # Load Tweets
            parsed_json_tweets = json.loads(line)
            # Extract date created
            this_tweet_timestamp = parsed_json_tweets['created_at'].lstrip().strip()
            # Extract user handle
            this_user_handle = parsed_json_tweets['user']['screen_name'].lstrip().strip()

            tweet_text = parsed_json_tweets['text'].lstrip().strip()
            # Remove new line and carriage return
            tweet_text = tlib.stripNewLineAndReturnCarriage(tweet_text)
            # Remove URL's & User Mentions
            tweet_text = tlib.removeURL(tweet_text)
            tweet_text = tlib.removeUserMentions(tweet_text)
            # Replace sequence of repeated characters by three characters
            tweet_text = tlib.replaceRepeatedCharacters(tweet_text)
            # Convert multiple white spaces to a single white space
            tweet_text = tlib.convertMultipleWhiteSpacesToSingleWhiteSpace(tweet_text)
            # Replace hashtags with words
            tweet_text = tlib.replaceHashTagsWithWords(tweet_text)
            # Remove double quotes
            tweet_text = re.sub(r'([^\s\w]|_)', '', tweet_text)
            # Trim the tweet text
            tweet_text = tweet_text.strip().lstrip().lower()
            tweet_text = tlib.removeItemsInTweetContainedInAList(tweet_text, ['rt'], ' ')

            ownerName = "N/A"
            ownerTimeStamp = "N/A"
            if 'retweeted_status' in parsed_json_tweets:
                ownerName = parsed_json_tweets['retweeted_status']['user'][
                                               'screen_name'].lstrip().strip()
                ownerTimeStamp = parsed_json_tweets['retweeted_status']['user'][
                                               'created_at'].lstrip().strip()
            print "%s\t%s,%s\t%s,%s" %(tweet_text,this_tweet_timestamp,this_user_handle, ownerName, ownerTimeStamp)
        except ValueError:
            continue
readHandle.close()