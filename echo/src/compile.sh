#!/usr/bin/env bash

echo "Compile echo"

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES="-Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include -I../.."
CFLAGS="-D_GNU_SOURCE -fPIC -std=c99 -D_ENABLE_FTRACE"

INS=(
    kp_kvstore kp_kv_local kp_kv_master vector-cdds/vector vector-cdds/vector64
    hash_table/hash threadpool/queue threadpool/threadpool kp_recovery kp_common clibpm
    evaluation/evaluation
)

OUTS=(
    kp_kvstore.bc kp_kv_local.bc kp_kv_master.bc vector.bc vector64.bc hash.bc queue.bc
    threadpool.bc kp_recovery.bc kp_common.bc clibpm.bc evaluation.bc
)

mkdir -p ${IRDIR}
for ((i = 0; i < ${#INS[@]}; ++i)); do
    clang ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${OUTS[i]} -c ${INS[i]}.c ${CFLAGS} ${INCLUDES}
    opt ${CONS_FLAGS} -o ${IRDIR}/${OUTS[i]} ${IRDIR}/${OUTS[i]}
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${OUTS[i]} ${IRDIR}/${OUTS[i]}
done

IRNAME="echo.bc"
cd ${IRDIR}
llvm-link ${OUTS[@]} -o ${ODIR}/${IRNAME}
llvm-dis ${ODIR}/${IRNAME}