#!/bin/bash

set -euxo pipefail

git clone --branch v3.0.1 --single-branch --depth 1 https://github.com/apache/spark.git
cd spark

patch -p1 <../p01.patch

./build/mvn -Pscala-2.12 -Pkubernetes -DskipTests -Phadoop-3.2 -Dhadoop.version=3.2.1 --no-transfer-progress clean package

./bin/docker-image-tool.sh -r gcr.io/kf-feast/spark-py-base -t v3.0.1-py39 -p ../python.Dockerfile build
