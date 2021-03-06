#!/bin/bash -x

# Install JDK8
yum install -y java-1.8.0-openjdk
export JAVA_HOME=/usr/lib/jvm/jre-1.8.0

# Install Spark
export SPARK_VERSION=3.0.2
export HADOOP_VERSION=2.7
curl -LO https://downloads.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

export SPARK_HOME=/opt/spark
mkdir $SPARK_HOME
tar -xf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -C $SPARK_HOME --strip-components=1
