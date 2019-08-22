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
elif [ "$MODE" == "pairpmfs" ]; then
    INCLUDES="-isystem /usr/lib/gcc/x86_64-linux-gnu/5/include 
    -I./arch/x86/include -Iarch/x86/include/generated/uapi 
    -Iarch/x86/include/generated  -Iinclude -I./arch/x86/include/uapi 
    -Iarch/x86/include/generated/uapi -I./include/uapi 
    -Iinclude/generated/uapi -include ./include/linux/kconfig.h"
    FLAGS="-D__KERNEL__ -Wno-trigraphs -fno-strict-aliasing 
    -fno-common -Wno-format-security -Wno-address-of-packed-member 
    -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 
    -mno-80387 -mtune=generic -mno-red-zone -mcmodel=kernel 
    -funit-at-a-time -DCONFIG_X86_X32_ABI -DCONFIG_AS_FXSAVEQ=1 
    -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 
    -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare 
    -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -fstack-protector 
    -fno-omit-frame-pointer -fno-optimize-sibling-calls -pg -mfentry 
    -DCC_USING_FENTRY  -Wno-pointer-sign -fno-strict-overflow -DMODULE 
    -D\"KBUILD_STR(s)=#s\" -D\"KBUILD_BASENAME=KBUILD_STR(journal)\" 
    -D\"KBUILD_MODNAME=KBUILD_STR(pmfs)\""
    
    COMP_DIR="/usr/src/linux-headers-4.3.0-040300-generic"
    COMP_CMD="clang ${INITOPT} ${LLVM_FLAGS} -nostdinc ${INCLUDES} ${FLAGS} -c 
    -o ${UNITS_DIR}/${BC_FILE} /home/aksun/git/NvmBenchmarks/pmfs/journal.c"
elif [ "$MODE" == "pairpmgd" ]; then
    COMP_DIR="pmgd"
    COMP_CMD="clang++ ${INITOPT} ${LLVM_FLAGS} --std=c++11 -I./include 
    -fomit-frame-pointer -funit-at-a-time -fno-strict-aliasing -fno-threadsafe-statics 
    -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wno-parentheses 
    -Wno-conversion -Wno-sign-compare -DPM -DPMFLUSH=clflushopt 
    -o ${UNITS_DIR}/${BC_FILE} -c src/transaction.cc"
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
    eval ${COMP_CMD}

	cd ${UNITS_DIR}
    opt ${CONS_FLAGS} -o ${BC_FILE} ${BC_FILE} > /dev/null 2>&1
	clang++ ${FINOPT} ${LLVM_FLAGS} -o ${BC_FILE} -c ${BC_FILE}
    llvm-dis -o ${LL_FILE} ${BC_FILE}
fi
