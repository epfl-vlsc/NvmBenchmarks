#!/usr/bin/env bash

echo "Compile pmfs"

source /home/aksun/git/NvmBenchmarks/inc.sh
INCLUDES="-nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -I./arch/x86/include \
-Iarch/x86/include/generated/uapi -Iarch/x86/include/generated \
-Iinclude -I./arch/x86/include/uapi -Iarch/x86/include/generated/uapi \
-I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h
"
CFLAGS="-D__KERNEL__ -Wno-trigraphs -fno-strict-aliasing -fno-common \
-Wno-format-security -Wno-address-of-packed-member -std=gnu89 -mno-sse \
-mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387 -mtune=generic \
-mno-red-zone -mcmodel=kernel -funit-at-a-time -DCONFIG_X86_X32_ABI -DCONFIG_AS_FXSAVEQ=1 \
-DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe \
-Wno-sign-compare -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks \
-fstack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls \
-pg -mfentry -DCC_USING_FENTRY -Wno-pointer-sign -fno-strict-overflow -DMODULE
"
KFLAGS="-DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(journal) \
-DKBUILD_MODNAME=KBUILD_STR(pmfs)"

CURDIR=${PWD}
cd /usr/src/linux-headers-4.3.0-040300-generic

FILES=(
  bbuild balloc dir file inode namei symlink super
  ioctl pmfs_stats journal xip wprotect
)

CURIRDIR=${CURDIR}/${IRDIR}
echo ${CURIRDIR}
mkdir -p ${CURIRDIR}
for ((i = 0; i < ${#FILES[@]}; ++i)); do
  clang ${INITOPT} ${LLVM_FLAGS} ${INCLUDES} ${CFLAGS} ${KFLAGS} -c -o ${CURIRDIR}/${FILES[i]}.bc ${CURDIR}/${FILES[i]}.c
  opt ${CONS_FLAGS} -o ${CURIRDIR}/${FILES[i]}.bc ${CURIRDIR}/${FILES[i]}.bc
  opt -mem2reg ${SIMP_FLAGS} -o ${CURIRDIR}/${FILES[i]}.bc ${CURIRDIR}/${FILES[i]}.bc
done

for ((i = 0; i < ${#FILES[@]}; i++)); do
    FILES[i]="${FILES[i]}.bc"
done

IRNAME="pmfs.bc"
cd ${CURIRDIR}
llvm-link ${FILES[@]} -o ${ODIR}/${IRNAME}
llvm-dis ${ODIR}/${IRNAME}