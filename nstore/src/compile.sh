#!/usr/bin/env bash

echo "Compile nstore"

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES="-I. -I..  -I./common -I../.."
CFLAGS="-DHAVE_CONFIG_H -D_ENABLE_FTRACE -fsized-deallocation -Wno-literal-conversion -std=c++11"
#-Wno-pointer-arith

FILES=(
    libpm wal_engine sp_engine lsm_engine opt_wal_engine 
    opt_lsm_engine opt_sp_engine
    test_benchmark ycsb_benchmark tpcc_benchmark main
)

mkdir -p ${IRDIR}
for ((i = 0; i < ${#FILES[@]}; ++i)); do
    clang++ ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${FILES[i]}.bc -c ${FILES[i]}.cpp ${CFLAGS} ${INCLUDES}
    opt ${CONS_FLAGS} -o ${IRDIR}/${FILES[i]}.bc ${IRDIR}/${FILES[i]}.bc
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${FILES[i]}.bc ${IRDIR}/${FILES[i]}.bc
done

for ((i = 0; i < ${#FILES[@]}; i++)); do
    FILES[i]="${FILES[i]}.bc"
done

IRNAME="nstore.bc"
cd ${IRDIR}
llvm-link ${FILES[@]} -o ${ODIR}/${IRNAME}
echo "llvm-link ${FILES[@]} -o ${ODIR}/${IRNAME}"
llvm-dis ${ODIR}/${IRNAME}
