#!/usr/bin/env bash

echo "Compile splitfs"

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES=""
CFLAGS="-DPRINT_DEBUG_FILE=0 -DDATA_JOURNALING_ENABLED=1 -DPOSIX_ENABLED=0 \
-DTRACE_FP_CALLS=1 -DNVM_DELAY=1 -DNON_TEMPORAL_WRITES=1 -DSYSCALL_APPENDS=0 \
-DPASS_THROUGH_CALLS=0 -DBG_CLEANING=1 -DINSTRUMENT_CALLS=0 -DWORKLOAD_YCSB=1 \
-DWORKLOAD_TPCC=0 -DWORKLOAD_REDIS=0 -DWORKLOAD_TAR=0 -DWORKLOAD_GIT=0 \
-DWORKLOAD_RSYNC=0 -DSHOW_DEBUG=0 -DSPIN_ON_ERROR=0 -Wno-unused-variable \
-pthread -fPIC -m64 -DSYSTEM_TYPE_BEE3 -DUSE_PTHREAD_LOCK=0 \
-DUSE_SCHED_GETCPU=1 -DINTEGRITY_CHECK=0 -DMEASURE_TIMING=0 \
-DUSE_SINGLE_LOCK=0 -DENABLE_FSYNC_TO_BS=0 -DENABLE_FSYNC_TO_CACHE=0 -DENABLE_FALLOC=1 \
-DUSE_BTREE=1 -DUNMAP_ON_CLOSE=0 -Wno-unknown-pragmas
"

FILES=(
    nvp_printf fileops_hub non_temporal
    tbl_mmaps log lru_cache timers stack
    #fileops_nvp
)

mkdir -p ${IRDIR}
for ((i = 0; i < ${#FILES[@]}; ++i)); do
    clang ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${FILES[i]}.bc -c ${FILES[i]}.c ${CFLAGS} ${INCLUDES}
    opt ${CONS_FLAGS} -o ${IRDIR}/${FILES[i]}.bc ${IRDIR}/${FILES[i]}.bc
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${FILES[i]}.bc ${IRDIR}/${FILES[i]}.bc
done

for ((i = 0; i < ${#FILES[@]}; i++)); do
    FILES[i]="${FILES[i]}.bc"
done

IRNAME="splitfs.bc"
cd ${IRDIR}
llvm-link ${FILES[@]} -o ${ODIR}/${IRNAME}
#echo "llvm-link ${FILES[@]} -o ${ODIR}/${IRNAME}"
llvm-dis ${ODIR}/${IRNAME}
