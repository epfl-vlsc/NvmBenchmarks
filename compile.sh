#!/usr/bin/env bash
MODE=$1
if [ "$MODE" == "echo" ]; then
    cd echo/src
    ./compile.sh
elif [ "$MODE" == "nstore" ]; then
    cd nstore/src
    ./compile.sh
elif [ "$MODE" == "nvml" ]; then
    cd nvml/src/examples/libpmemobj/
    ./compile.sh
elif [ "$MODE" == "pmfs" ]; then
    cd pmfs
    ./compile.sh
elif [ "$MODE" == "pmgd" ]; then
    cd pmgd
    ./compile.sh
elif [ "$MODE" == "splitfs" ]; then
    cd splitfs
    ./compile.sh
else
    echo "choose benchmark"
fi
