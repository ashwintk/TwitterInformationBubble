#!/usr/bin/env bash
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_01 \
-output /SharedResults/POLITICS/ExtractedDates/01

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_02 \
-output /SharedResults/POLITICS/ExtractedDates/02

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_03 \
-output /SharedResults/POLITICS/ExtractedDates/03

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_04 \
-output /SharedResults/POLITICS/ExtractedDates/04

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_05 \
-output /SharedResults/POLITICS/ExtractedDates/05

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_06 \
-output /SharedResults/POLITICS/ExtractedDates/06

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_07 \
-output /SharedResults/POLITICS/ExtractedDates/07

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_08 \
-output /SharedResults/POLITICS/ExtractedDates/08

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_09 \
-output /SharedResults/POLITICS/ExtractedDates/09

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_10 \
-output /SharedResults/POLITICS/ExtractedDates/10

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_11 \
-output /SharedResults/POLITICS/ExtractedDates/11

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_12 \
-output /SharedResults/POLITICS/ExtractedDates/12

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_13 \
-output /SharedResults/POLITICS/ExtractedDates/13

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_14 \
-output /SharedResults/POLITICS/ExtractedDates/14

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_15 \
-output /SharedResults/POLITICS/ExtractedDates/15

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_16 \
-output /SharedResults/POLITICS/ExtractedDates/16

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_17 \
-output /SharedResults/POLITICS/ExtractedDates/17

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_18 \
-output /SharedResults/POLITICS/ExtractedDates/18

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_19 \
-output /SharedResults/POLITICS/ExtractedDates/19

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_20 \
-output /SharedResults/POLITICS/ExtractedDates/20

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_21 \
-output /SharedResults/POLITICS/ExtractedDates/21

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_22 \
-output /SharedResults/POLITICS/ExtractedDates/22

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_23 \
-output /SharedResults/POLITICS/ExtractedDates/23

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionReducer.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/POLITICS/Politics_24 \
-output /SharedResults/POLITICS/ExtractedDates/24