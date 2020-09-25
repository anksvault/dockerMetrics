#!/bin/sh

while true
do
    command_date=$(date +%s)
    docker ps -a --format "$command_date\t{{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Command}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Ports}}\t{{.Mounts}}\t{{.Networks}}\t{{.Size}}"
    sleep 300
done
