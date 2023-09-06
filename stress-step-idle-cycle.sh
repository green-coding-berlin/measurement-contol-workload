#!/bin/bash

for ((step_outer = 1; step_outer <= 20; step_outer++)); do
    echo "outer"
    for ((step = 1; step <= 20; step++)); do
        echo "inner"
        stress-ng -c 1 --cpu-load 20 &
            sleep 0.3
    done
        sleep 0.5
    pkill stress-ng
    sleep 5
done
