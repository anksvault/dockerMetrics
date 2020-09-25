# dockerMetrics

Use the provided Dockerfile and scripts to create a docker image to collect metrics for your containers running in the standalone environment.

**files** - shell scripts which will be used to continuously run and collect container metrics.

**Dockerfile** - use this to build your docker image. It uses ultra-light busybox (1.23 MB) base image and generates final image (62.3 MB)

***Build*** - ./build.sh

**Credits**:
docker command scripts are forked and tweaked to fit the busybox image: https://github.com/splunk/docker-itmonitoring/tree/master/ta-dockerstats
