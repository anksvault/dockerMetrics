#!/bin/env sh

for proc in "docker_events.sh" "docker_ps.sh" "docker_stats.sh" "docker_top.sh" "docker_inventory.sh" "watchdog.sh"
do
    echo "Starting $proc"
    /root/$proc &
    sleep 5
done

exec "$@"
