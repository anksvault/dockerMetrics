#!/bin/bash

docker build -t container_watchdog:1.0 .
docker run -it -d --restart unless-stopped -v /run/docker.sock:/var/run/docker.sock --name watchdog container_watchdog:1.0
