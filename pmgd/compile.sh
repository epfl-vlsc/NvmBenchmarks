#!/usr/bin/env bash

echo "Compile pmgd"

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES="-I./include"
CFLAGS="--std=c++11 -fomit-frame-pointer -funit-at-a-time -fno-strict-aliasing \
-fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wno-parentheses -Wno-conversion \
-Wno-sign-compare -Wno-c++11-narrowing -DPM -DPMFLUSH=clflushopt -DCOMMIT_ID=\"\"
"

FILES=(
    GraphConfig node edge  stringid StringTable
    PropertyList TransactionManager transaction Index IndexManager
    EdgeIndex IndexString   FixedAllocator
    VariableAllocator FlexFixedAllocator FixSizeAllocator
    ChunkAllocator AllocatorUnit Allocator linux graph
    # property AvlTreeIndex AvlTree
)

mkdir -p ${IRDIR}
for ((i = 0; i < ${#FILES[@]}; ++i)); do
    clang++ ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${FILES[i]}.bc -c src/${FILES[i]}.cc ${CFLAGS} ${INCLUDES}
    opt ${CONS_FLAGS} -o ${IRDIR}/${FILES[i]}.bc ${IRDIR}/${FILES[i]}.bc
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${FILES[i]}.bc ${IRDIR}/${FILES[i]}.bc
done

for ((i = 0; i < ${#FILES[@]}; i++)); do
    FILES[i]="${FILES[i]}.bc"
done

IRNAME="pmgd.bc"
cd ${IRDIR}
llvm-link ${FILES[@]} -o ${ODIR}/${IRNAME}
llvm-dis ${ODIR}/${IRNAME}
