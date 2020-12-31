This builds a container image for Spark 3.0.1 with two tweaks:

1. a patch that makes it backwards compatible with spark k8s operator `v1beta2-1.1.2-2.4.5`
2. AWS libraries

The image is publicly available as `gcr.io/kf-feast/spark-py:v3.0.1`
