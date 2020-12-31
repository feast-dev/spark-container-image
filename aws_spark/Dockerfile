ARG BASE_IMAGE=seedjeffwan/spark:v2.4.5

FROM ${BASE_IMAGE}

ARG HADOOP_AWS_VERSION=3.2.1
ARG AWS_JAVA_SDK_VERSION=1.11.874

USER root
# Add HADOOP_AWS_JAR and AWS_JAVA_SDK
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/${HADOOP_AWS_VERSION}/hadoop-aws-${HADOOP_AWS_VERSION}.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/${AWS_JAVA_SDK_VERSION}/aws-java-sdk-bundle-${AWS_JAVA_SDK_VERSION}.jar /opt/spark/jars

ENTRYPOINT [ "/opt/entrypoint.sh" ]
