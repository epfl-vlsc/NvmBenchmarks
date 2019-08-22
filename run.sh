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

if [ "$MODE" == "pairatlas" ]; then
    echo "not done"
elif [ "$MODE" == "pairecho" ]; then
    COMP_DIR="echo/src"
    COMP_CMD="clang ${INITOPT} ${LLVM_FLAGS} -std=c99 -D_ENABLE_FTRACE -c -o 
    ${UNITS_DIR}/${BC_FILE} kp_kv_master.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  
    -D_GNU_SOURCE -Wall -fPIC"
elif [ "$MODE" == "pairnstore" ]; then
    COMP_DIR="nstore/src"
    COMP_CMD="clang++ ${INITOPT} ${LLVM_FLAGS} -DHAVE_CONFIG_H -I. -I.. -I./common
    -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 
    -c -o ${UNITS_DIR}/${BC_FILE} opt_wal_engine.cpp"
elif [ "$MODE" == "pairnvml" ]; then
    echo "not done"
elif [ "$MODE" == "pairpmfs" ]; then
    echo "not done"
elif [ "$MODE" == "pairpmgd" ]; then
    echo "not done"
elif [ "$MODE" == "duratlas" ]; then
    echo "not done"
elif [ "$MODE" == "durecho" ]; then
    echo "not done"
elif [ "$MODE" == "durnstore" ]; then
    echo "not done"
elif [ "$MODE" == "durnvml" ]; then
    echo "not done"
elif [ "$MODE" == "durpmfs" ]; then
    echo "not done"
elif [ "$MODE" == "durpmgd" ]; then
    echo "not done"
elif [ "$MODE" == "logatlas" ]; then
    echo "not done"
elif [ "$MODE" == "lognvml" ]; then
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

modes=( \
"pairatlas" "pairecho" "pairnstore" "pairnvml" "pairpmfs" "pairpmgd" \
"duratlas" "durecho" "durnstore" "durnvml" "durpmfs" "durpmgd" \
"logatlas" "lognvml" \
)

if [ $(contains "${modes[@]}" "$MODE") == "y" ] ;then
    cd ${COMP_DIR}
    echo "In ${PWD}"

    echo ${COMP_CMD}
    ${COMP_CMD}

	cd ${UNITS_DIR}
    opt ${CONS_FLAGS} -o ${BC_FILE} ${BC_FILE} > /dev/null 2>&1
	clang++ ${FINOPT} ${LLVM_FLAGS} -o ${BC_FILE} -c ${BC_FILE}
    llvm-dis -o ${LL_FILE} ${BC_FILE}
fi
