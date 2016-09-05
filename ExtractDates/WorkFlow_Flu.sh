#!/usr/bin/env bash
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_One \
-output /TwitterData/ExtractedDates/date_extract_1

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Two \
-output /TwitterData/ExtractedDates/date_extract_2

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Three \
-output /TwitterData/ExtractedDates/date_extract_3

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Four \
-output /TwitterData/ExtractedDates/date_extract_4

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Five \
-output /TwitterData/ExtractedDates/date_extract_5

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Six \
-output /TwitterData/ExtractedDates/date_extract_6

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Seven \
-output /TwitterData/ExtractedDates/date_extract_7

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Eight \
-output /TwitterData/ExtractedDates/date_extract_8

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionMapper.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionCombiner.py \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractionReducer.py \
-mapper DateExtractionMapper.py \
-combiner DateExtractionCombiner.py \
-reducer DateExtractionReducer.py \
-input /TwitterData/FLUDATA/Flu_Nine \
-output /TwitterData/ExtractedDates/date_extract_9