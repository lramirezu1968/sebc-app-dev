#!/bin/sh

export SPARK_DIST_CLASSPATH=$(hadoop classpath)

SPARK_CLASS=com.cloudera.sdk.SparkStreamExample
SPARK_JAR=spark2.jar
HOST=vstkazu201601
PORT=41415

DEPLOY_MODE=client
MASTER=local[2]

spark2-submit --deploy-mode ${DEPLOY_MODE} --master ${MASTER} --executor-memory 1G --num-executors 4 --executor-cores 2 --class ${SPARK_CLASS} ${SPARK_JAR} ${HOST} ${PORT}
