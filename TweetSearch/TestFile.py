import sys, os
from dateutil import parser
from datetime import timedelta as td

sys.path.append('./')

import TweetsLib as tlib

print (tlib.isArrayOfFilterWordsInTweet("I hate everyone", 'trump,hillary,clinton', ' ', ','))