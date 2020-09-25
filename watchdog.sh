#!/bin/sh

while true
do
    for proc in "docker_events.sh" "docker_ps.sh" "docker_stats.sh" "docker_top.sh" "docker_inventory.sh"
    do
        RES=$(ps -ef|grep -v grep|grep -s $proc)

        if [ "$RES" == "" ]
        then
            echo "[ERROR] Process $proc is not running!"
        fi
    done
    sleep 60
done
