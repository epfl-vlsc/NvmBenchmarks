#!/usr/bin/env bash
MODE=$1
BASE_DIR=$PWD

UNITS_DIR=${BASE_DIR}/units
BC_FILE=${MODE}.bc
LL_FILE=${MODE}.ll

COMP_DIR=""
COMP_CMD=""


CHECKER_FLAGS="-fno-discard-value-names -ggdb -femit-all-decls -fstandalone-debug"
LLVM_FLAGS="-emit-llvm ${CHECKER_FLAGS}"
CONS_FLAGS="-load ${BASE_DIR}/lib/libcons.so -cons"
INITOPT="-O1 -mllvm -disable-llvm-optzns"
FINOPT="-O3"

if [ "$MODE" == "atlas" ]; then
    echo "not done"
elif [ "$MODE" == "pairecho" ]; then
    COMP_DIR=echo/src
    COMP_CMD="clang ${INITOPT} ${LLVM_FLAGS} -std=c99 -D_ENABLE_FTRACE -c -o 
    ${UNITS_DIR}/${BC_FILE} kp_kv_master.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  
    -D_GNU_SOURCE -Wall -fPIC"
elif [ "$MODE" == "nstore" ]; then
    echo "not done"
elif [ "$MODE" == "nvml" ]; then
    echo "not done"
elif [ "$MODE" == "pmfs" ]; then
    echo "not done"
elif [ "$MODE" == "pmgd" ]; then
    echo "not done"
elif [ "$MODE" == "rem" ]; then
    cd units
    make clean
else
    echo "choose option"
fi

function contains() {
    local n=$#
    local value=${!n}
    for ((i=1;i < $#;i++)) {
        if [ "${!i}" == "${value}" ]; then
            echo "y"
            return 0
        fi
    }
    echo "n"
    return 1
}

modes=("pairecho" "d")
if [ $(contains "${modes[@]}" "$MODE") == "y" ] ;then
    cd ${COMP_DIR}
    echo ${PWD}

    echo ${COMP_CMD}
    ${COMP_CMD}

	cd ${UNITS_DIR}
    opt ${CONS_FLAGS} -o ${BC_FILE} ${BC_FILE} > /dev/null 2>&1
	clang++ ${FINOPT} ${LLVM_FLAGS} -o ${BC_FILE} -c ${BC_FILE}
    llvm-dis -o ${LL_FILE} ${BC_FILE}
fi

