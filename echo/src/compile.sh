#!/usr/bin/env bash

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES="-Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include"
CFLAGS="-D_GNU_SOURCE -fPIC -std=c99 -D_ENABLE_FTRACE"

INS1=(
    kp_kvstore kp_kv_local kp_kv_master vector-cdds/vector vector-cdds/vector64
    hash_table/hash threadpool/queue threadpool/threadpool kp_recovery kp_common clibpm
    evaluation/evaluation
)

OUTS1=(
    kp_kvstore.bc kp_kv_local.bc kp_kv_master.bc vector.bc vector64.bc hash.bc queue.bc
    threadpool.bc kp_recovery.bc kp_common.bc clibpm.bc evaluation.bc
)

mkdir -p ${IRDIR}
for ((i = 0; i < ${#INS1[@]}; ++i)); do
    clang ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${OUTS1[i]} -c ${INS1[i]}.c ${CFLAGS} ${INCLUDES}
    opt ${CONS_FLAGS} -o ${IRDIR}/${OUTS1[i]} ${IRDIR}/${OUTS1[i]} >/dev/null 2>&1
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${OUTS1[i]} ${IRDIR}/${OUTS1[i]} >/dev/null 2>&1
done

IRNAME="echo.bc"
cd ${IRDIR}
llvm-link ${OUTS1[@]} -o ${ODIR}/${IRNAME}
llvm-dis ${ODIR}/${IRNAME}
