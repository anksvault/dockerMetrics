#!/bin/sh

while true
do
    #docker inspect $(docker ps -aq) | jq -c -M -r ".[]"
    docker inspect $(docker ps -aq)|sed 's/ //'g | tr -d '[ \n]'
    sleep 86400
done
