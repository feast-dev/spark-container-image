This builds a container image for Spark 3.0.1 with several tweaks:

1. a patch that makes it backwards compatible with spark k8s operator `v1beta2-1.1.2-2.4.5`
2. added AWS libraries
3. added TFRecord support
4. added GCS libraries
5. added Azure blob storage libraries

To build from scratch, first run `build.sh` to build the base image then build the Dockerfile in this repository.

The image is publicly available as `gcr.io/kf-feast/spark-py:v3.0.1`
