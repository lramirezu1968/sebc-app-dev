#!/bin/sh

SPARK_CLASS=com.cloudera.sdk.SparkBatchExample
SPARK_PATH=boot_camp/Spark2
SPARK_JAR=spark.jar

DEPLOY_MODE=client
MASTER=local[1]

spark-submit --deploy-mode ${DEPLOY_MODE} --master ${MASTER} --executor-memory 128M --num-executors 1 --executor-cores 1 --class ${SPARK_CLASS} ${SPARK_JAR}  ${SPARK_PATH}/entrada2.txt ${SPARK_PATH}/salida1
