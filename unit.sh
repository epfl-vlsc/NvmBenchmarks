MODE=$1
DIR=$PWD
UNITS_DIR=${DIR}/units

if [ "$MODE" == "atlas" ]; then
    echo "not done"
elif [ "$MODE" == "echo" ]; then
    cd echo/src
    clang -emit-llvm -ggdb -O0 -std=c99 -D_ENABLE_FTRACE \
        -c -o ${UNITS_DIR}/pairecho.bc kp_kv_master.c \
        -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include -D_GNU_SOURCE -Wall -fPIC -O0
elif [ "$MODE" == "nstore" ]; then
    echo "not done"
elif [ "$MODE" == "nvml" ]; then
    echo "not done"
elif [ "$MODE" == "pmfs" ]; then
    echo "not done"
elif [ "$MODE" == "pmgd" ]; then
    create_ir
else
    echo "atlas, echo, nstore, nvml, pmfs, pmgd"
fi
