#!/usr/bin/env bash

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_01 \
-output /SharedResults/POLITICS_ExtractedTweets/01

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_02 \
-output /SharedResults/POLITICS_ExtractedTweets/02

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_03 \
-output /SharedResults/POLITICS_ExtractedTweets/03

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_04 \
-output /SharedResults/POLITICS_ExtractedTweets/04

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_05 \
-output /SharedResults/POLITICS_ExtractedTweets/05

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_06 \
-output /SharedResults/POLITICS_ExtractedTweets/06

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_07 \
-output /SharedResults/POLITICS_ExtractedTweets/07

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_08 \
-output /SharedResults/POLITICS_ExtractedTweets/08

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_09 \
-output /SharedResults/POLITICS_ExtractedTweets/09

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_10 \
-output /SharedResults/POLITICS_ExtractedTweets/10

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_11 \
-output /SharedResults/POLITICS_ExtractedTweets/11

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_12 \
-output /SharedResults/POLITICS_ExtractedTweets/12

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_13 \
-output /SharedResults/POLITICS_ExtractedTweets/13

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_14 \
-output /SharedResults/POLITICS_ExtractedTweets/14

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_15 \
-output /SharedResults/POLITICS_ExtractedTweets/15

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_16 \
-output /SharedResults/POLITICS_ExtractedTweets/16

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_17 \
-output /SharedResults/POLITICS_ExtractedTweets/17

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_18 \
-output /SharedResults/POLITICS_ExtractedTweets/18

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_19 \
-output /SharedResults/POLITICS_ExtractedTweets/19

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_20 \
-output /SharedResults/POLITICS_ExtractedTweets/20

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_21 \
-output /SharedResults/POLITICS_ExtractedTweets/21

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_22 \
-output /SharedResults/POLITICS_ExtractedTweets/22

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_23 \
-output /SharedResults/POLITICS_ExtractedTweets/23

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_24 \
-output /SharedResults/POLITICS_ExtractedTweets/24

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_25 \
-output /SharedResults/POLITICS_ExtractedTweets/25

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_26 \
-output /SharedResults/POLITICS_ExtractedTweets/26

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_27 \
-output /SharedResults/POLITICS_ExtractedTweets/27

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar \
-D mapred.reduce.tasks=27 \
-D stream.num.map.output.key.fields=1 \
-libjars /home/tashwin/PotentialComputation/TweetsClassifier.jar \
-file /home/tashwin/PotentialComputation/TweetsPropagationMapper.py \
-file /home/tashwin/PotentialComputation/politicsTopics \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-mapper TweetsPropagationMapper.py \
-partitioner TextPartitioner \
-reducer /bin/cat \
-input /TwitterData/POLITICS/Politics_28 \
-output /SharedResults/POLITICS_ExtractedTweets/28