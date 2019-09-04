#!/usr/bin/env bash
CHECKER_DIR="/home/aksun/git/NvmFlow/dfbuild/lib"
CHECKER_FLAGS="-fno-discard-value-names -ggdb -femit-all-decls -fstandalone-debug"
LLVM_FLAGS="-emit-llvm ${CHECKER_FLAGS}"
CONS_FLAGS="-load ${CHECKER_DIR}/libcons.so -cons"
SIMP_FLAGS="-load ${CHECKER_DIR}/libsimp.so -simp"
INITOPT="-O0 -Xclang -disable-O0-optnone"

ODIR="/home/aksun/git/NvmBenchmarks/benchmarks"
IRDIR="bc_files"