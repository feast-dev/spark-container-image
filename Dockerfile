ARG BASE_IMAGE=gcr.io/kf-feast/spark-py-base/spark-py:v3.0.1

FROM ${BASE_IMAGE}

ARG HADOOP_AWS_VERSION=3.2.1
ARG AWS_JAVA_SDK_VERSION=1.11.874
ARG TFRECORD_VERSION=0.3.0
ARG GCS_CONNECTOR_VERSION=2.0.1
ARG BQ_CONNECTOR_VERSION=0.18.1

USER root
# Add HADOOP_AWS_JAR and AWS_JAVA_SDK
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/${HADOOP_AWS_VERSION}/hadoop-aws-${HADOOP_AWS_VERSION}.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/${AWS_JAVA_SDK_VERSION}/aws-java-sdk-bundle-${AWS_JAVA_SDK_VERSION}.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/com/linkedin/sparktfrecord/spark-tfrecord_2.12/${TFRECORD_VERSION}/spark-tfrecord_2.12-${TFRECORD_VERSION}.jar /opt/spark/jars
ADD https://storage.googleapis.com/hadoop-lib/gcs/gcs-connector-hadoop2-${GCS_CONNECTOR_VERSION}.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/com/google/cloud/spark/spark-bigquery-with-dependencies_2.12/${BQ_CONNECTOR_VERSION}/spark-bigquery-with-dependencies_2.12-${BQ_CONNECTOR_VERSION}.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-azure/3.3.0/hadoop-azure-3.3.0.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/com/microsoft/azure/azure-storage/8.6.5/azure-storage-8.6.5.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-util-ajax/9.4.26.v20200117/jetty-util-ajax-9.4.26.v20200117.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-util/9.4.26.v20200117/jetty-util-9.4.26.v20200117.jar /opt/spark/jars

ENTRYPOINT [ "/opt/entrypoint.sh" ]
