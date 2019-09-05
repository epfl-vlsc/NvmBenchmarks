#!/usr/bin/env bash

echo "Compile nvml"

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES="-I../../../include -I."
CFLAGS="-std=gnu99 -fPIC"

echo "Compile hashmap"
HMFILES=(
    hashmap_atomic hashmap_tx
)

cd hashmap

ANNOTINC="-I../../../../../"
mkdir -p ${IRDIR}
for ((i = 0; i < ${#HMFILES[@]}; ++i)); do
    clang ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${HMFILES[i]}.bc -c ${HMFILES[i]}.c ${CFLAGS} ${INCLUDES} ${ANNOTINC}
    opt ${CONS_FLAGS} -o ${IRDIR}/${HMFILES[i]}.bc ${IRDIR}/${HMFILES[i]}.bc
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${HMFILES[i]}.bc ${IRDIR}/${HMFILES[i]}.bc
done

cd ..

for ((i = 0; i < ${#HMFILES[@]}; i++)); do
    HMFILES[i]="hashmap/${IRDIR}/${HMFILES[i]}.bc"
done

#-------------------------------------------------------------------
echo "Compile treemap"
TMFILES=(
    ctree_map btree_map rbtree_map
)

cd tree_map

ANNOTINC="-I../../../../../"
mkdir -p ${IRDIR}
for ((i = 0; i < ${#TMFILES[@]}; ++i)); do
    clang ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${TMFILES[i]}.bc -c ${TMFILES[i]}.c ${CFLAGS} ${INCLUDES} ${ANNOTINC}
    opt ${CONS_FLAGS} -o ${IRDIR}/${TMFILES[i]}.bc ${IRDIR}/${TMFILES[i]}.bc
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${TMFILES[i]}.bc ${IRDIR}/${TMFILES[i]}.bc
done

cd ..

for ((i = 0; i < ${#TMFILES[@]}; i++)); do
    TMFILES[i]="tree_map/${IRDIR}/${TMFILES[i]}.bc"
done

#-------------------------------------------------------------------
echo "Compile map"
MFILES=(
    map_ctree map_btree map_rbtree
    map_hashmap_atomic map_hashmap_tx
    data_store
)

cd map
MAPANNOT="-I../ -I../hashmap -I../tree_map"
ANNOTINC="-I../../../../../"
mkdir -p ${IRDIR}
for ((i = 0; i < ${#MFILES[@]}; ++i)); do
    clang ${INITOPT} ${LLVM_FLAGS} -o ${IRDIR}/${MFILES[i]}.bc -c ${MFILES[i]}.c ${CFLAGS} ${INCLUDES} ${ANNOTINC} ${MAPANNOT}
    opt ${CONS_FLAGS} -o ${IRDIR}/${MFILES[i]}.bc ${IRDIR}/${MFILES[i]}.bc
    opt -mem2reg ${SIMP_FLAGS} -o ${IRDIR}/${MFILES[i]}.bc ${IRDIR}/${MFILES[i]}.bc
done

cd ..

for ((i = 0; i < ${#MFILES[@]}; i++)); do
    MFILES[i]="map/${IRDIR}/${MFILES[i]}.bc"
done

#-------------------------------------------------------------------

echo "Link all"
IRNAME="nvml.bc"
llvm-link ${HMFILES[@]} ${TMFILES[@]} ${MFILES[@]} -o ${ODIR}/${IRNAME}
llvm-dis ${ODIR}/${IRNAME}
