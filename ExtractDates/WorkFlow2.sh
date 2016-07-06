#!/usr/bin/env bash
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-file /home/tashwin/PotentialComputation/DateExtractor/DateExtractorStageTwoReducer.py \
-mapper /bin/cat \
-combiner DateExtractorStageTwoReducer.py \
-reducer DateExtractorStageTwoReducer.py \
-input /TwitterData/ExtractedDates/date_extract_1/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_2/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_3/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_4/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_5/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_6/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_7/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_8/part-00000 \
-input /TwitterData/ExtractedDates/date_extract_9/part-00000 \
-output /TwitterData/FluExtractedDates