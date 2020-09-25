#!/bin/sh

while true
do
    docker events | grep -v "container top\|container exec_start\|container exec_die\|container exec_create"
done
