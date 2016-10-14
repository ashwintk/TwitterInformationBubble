#!/bin/bash
#Alphabet A
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00000 \
-input /SharedResults/flu_propagation_2/part-00000 \
-input /SharedResults/flu_propagation_3/part-00000 \
-input /SharedResults/flu_propagation_4/part-00000 \
-output /SharedResults/FLU_TWEET_LEVEL/A
#Alphabet B
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00001 \
-input /SharedResults/flu_propagation_2/part-00001 \
-input /SharedResults/flu_propagation_3/part-00001 \
-input /SharedResults/flu_propagation_4/part-00001 \
-output /SharedResults/FLU_TWEET_LEVEL/B
#Alphabet C
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00002 \
-input /SharedResults/flu_propagation_2/part-00002 \
-input /SharedResults/flu_propagation_3/part-00002 \
-input /SharedResults/flu_propagation_4/part-00002 \
-output /SharedResults/FLU_TWEET_LEVEL/C
#Alphabet D
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00003 \
-input /SharedResults/flu_propagation_2/part-00003 \
-input /SharedResults/flu_propagation_3/part-00003 \
-input /SharedResults/flu_propagation_4/part-00003 \
-output /SharedResults/FLU_TWEET_LEVEL/D
#Alphabet E
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00004 \
-input /SharedResults/flu_propagation_2/part-00004 \
-input /SharedResults/flu_propagation_3/part-00004 \
-input /SharedResults/flu_propagation_4/part-00004 \
-output /SharedResults/FLU_TWEET_LEVEL/E
#Alphabet F
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00005 \
-input /SharedResults/flu_propagation_2/part-00005 \
-input /SharedResults/flu_propagation_3/part-00005 \
-input /SharedResults/flu_propagation_4/part-00005 \
-output /SharedResults/FLU_TWEET_LEVEL/F
#Alphabet G
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00006 \
-input /SharedResults/flu_propagation_2/part-00006 \
-input /SharedResults/flu_propagation_3/part-00006 \
-input /SharedResults/flu_propagation_4/part-00006 \
-output /SharedResults/FLU_TWEET_LEVEL/G
#Alphabet H
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00007 \
-input /SharedResults/flu_propagation_2/part-00007 \
-input /SharedResults/flu_propagation_3/part-00007 \
-input /SharedResults/flu_propagation_4/part-00007 \
-output /SharedResults/FLU_TWEET_LEVEL/H
#Alphabet I
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00008 \
-input /SharedResults/flu_propagation_2/part-00008 \
-input /SharedResults/flu_propagation_3/part-00008 \
-input /SharedResults/flu_propagation_4/part-00008 \
-output /SharedResults/FLU_TWEET_LEVEL/I
#Alphabet J
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00009 \
-input /SharedResults/flu_propagation_2/part-00009 \
-input /SharedResults/flu_propagation_3/part-00009 \
-input /SharedResults/flu_propagation_4/part-00009 \
-output /SharedResults/FLU_TWEET_LEVEL/J
#Alphabet K
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00010 \
-input /SharedResults/flu_propagation_2/part-00010 \
-input /SharedResults/flu_propagation_3/part-00010 \
-input /SharedResults/flu_propagation_4/part-00010 \
-output /SharedResults/FLU_TWEET_LEVEL/K
#Alphabet L
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00011 \
-input /SharedResults/flu_propagation_2/part-00011 \
-input /SharedResults/flu_propagation_3/part-00011 \
-input /SharedResults/flu_propagation_4/part-00011 \
-output /SharedResults/FLU_TWEET_LEVEL/L
#Alphabet M
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00012 \
-input /SharedResults/flu_propagation_2/part-00012 \
-input /SharedResults/flu_propagation_3/part-00012 \
-input /SharedResults/flu_propagation_4/part-00012 \
-output /SharedResults/FLU_TWEET_LEVEL/M
#Alphabet N
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00013 \
-input /SharedResults/flu_propagation_2/part-00013 \
-input /SharedResults/flu_propagation_3/part-00013 \
-input /SharedResults/flu_propagation_4/part-00013 \
-output /SharedResults/FLU_TWEET_LEVEL/N
#Alphabet O
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00014 \
-input /SharedResults/flu_propagation_2/part-00014 \
-input /SharedResults/flu_propagation_3/part-00014 \
-input /SharedResults/flu_propagation_4/part-00014 \
-output /SharedResults/FLU_TWEET_LEVEL/O
#Alphabet P
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00015 \
-input /SharedResults/flu_propagation_2/part-00015 \
-input /SharedResults/flu_propagation_3/part-00015 \
-input /SharedResults/flu_propagation_4/part-00015 \
-output /SharedResults/FLU_TWEET_LEVEL/P
#Alphabet Q
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00016 \
-input /SharedResults/flu_propagation_2/part-00016 \
-input /SharedResults/flu_propagation_3/part-00016 \
-input /SharedResults/flu_propagation_4/part-00016 \
-output /SharedResults/FLU_TWEET_LEVEL/Q
#Alphabet R
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00017 \
-input /SharedResults/flu_propagation_2/part-00017 \
-input /SharedResults/flu_propagation_3/part-00017 \
-input /SharedResults/flu_propagation_4/part-00017 \
-output /SharedResults/FLU_TWEET_LEVEL/R
#Alphabet S
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00018 \
-input /SharedResults/flu_propagation_2/part-00018 \
-input /SharedResults/flu_propagation_3/part-00018 \
-input /SharedResults/flu_propagation_4/part-00018 \
-output /SharedResults/FLU_TWEET_LEVEL/S
#Alphabet T
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00019 \
-input /SharedResults/flu_propagation_2/part-00019 \
-input /SharedResults/flu_propagation_3/part-00019 \
-input /SharedResults/flu_propagation_4/part-00019 \
-output /SharedResults/FLU_TWEET_LEVEL/T
#Alphabet U
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00020 \
-input /SharedResults/flu_propagation_2/part-00020 \
-input /SharedResults/flu_propagation_3/part-00020 \
-input /SharedResults/flu_propagation_4/part-00020 \
-output /SharedResults/FLU_TWEET_LEVEL/U
#Alphabet V
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00021 \
-input /SharedResults/flu_propagation_2/part-00021 \
-input /SharedResults/flu_propagation_3/part-00021 \
-input /SharedResults/flu_propagation_4/part-00021 \
-output /SharedResults/FLU_TWEET_LEVEL/V
#Alphabet W
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00022 \
-input /SharedResults/flu_propagation_2/part-00022 \
-input /SharedResults/flu_propagation_3/part-00022 \
-input /SharedResults/flu_propagation_4/part-00022 \
-output /SharedResults/FLU_TWEET_LEVEL/W
#Alphabet X
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00023 \
-input /SharedResults/flu_propagation_2/part-00023 \
-input /SharedResults/flu_propagation_3/part-00023 \
-input /SharedResults/flu_propagation_4/part-00023 \
-output /SharedResults/FLU_TWEET_LEVEL/X
#Alphabet Y
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00024 \
-input /SharedResults/flu_propagation_2/part-00024 \
-input /SharedResults/flu_propagation_3/part-00024 \
-input /SharedResults/flu_propagation_4/part-00024 \
-output /SharedResults/FLU_TWEET_LEVEL/Y
#Alphabet Z
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00025 \
-input /SharedResults/flu_propagation_2/part-00025 \
-input /SharedResults/flu_propagation_3/part-00025 \
-input /SharedResults/flu_propagation_4/part-00025 \
-output /SharedResults/FLU_TWEET_LEVEL/Z
#Non alphabets
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapred.reduce.tasks=1 \
-D stream.num.map.output.key.fields=1 \
-D mapred.output.key.comparator.class=org.apache.hadoop.mapred.lib.KeyFieldBasedComparator \
-D mapred.text.key.comparator.options="-k1" \
-file /home/tashwin/PotentialComputation/TweetsPropagationReducer.py \
-file /home/tashwin/PotentialComputation/TweetsLib.py \
-cmdenv START_DATE="05/01/2015" \
-cmdenv END_DATE="12/01/2015" \
-mapper /bin/cat \
-reducer TweetsPropagationReducer.py \
-input /SharedResults/flu_propagation_1/part-00026 \
-input /SharedResults/flu_propagation_2/part-00026 \
-input /SharedResults/flu_propagation_3/part-00026 \
-input /SharedResults/flu_propagation_4/part-00026 \
-output /SharedResults/FLU_TWEET_LEVEL/OTHERS