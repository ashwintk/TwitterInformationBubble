#!/usr/bin/env python

import json, sys, re, os

sys.path.append('./')

import TweetsLib as tlib

for line in sys.stdin:
    try:
        # Load Tweets
        parsed_json_tweets = json.loads(line)
        # Extract date created
        this_tweet_timestamp = parsed_json_tweets['created_at'].lstrip().strip()
        # Extract user handle
        this_user_handle = parsed_json_tweets['user']['screen_name'].lstrip().strip()
        # Extract tweet text
        tweet_text = parsed_json_tweets['text'].lstrip().strip()
        if tweet_text != "":
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
            # Get word to filter
            wordToFilter = os.environ["FILTER_WORD"]
            # If the word is in tweet
            if tlib.isWordInTweet(tweet_text, wordToFilter):
                if 'retweeted_status' in parsed_json_tweets:
                    # Remove 'RT's from retweeted tweets
                    tweet_text = tlib.removeItemsInTweetContainedInAList(tweet_text, ['rt', 'RT'], ' ')
                if tweet_text == 'if you drink enough fluids in the morning you will feel happier sharper and more energetic throughout the day':
                    print line
    except ValueError:
        continue
