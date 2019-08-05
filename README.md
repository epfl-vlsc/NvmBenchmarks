# beware
* flags
    * check O
    * remove W flags

# echo

## first time

    make tcmalloc
    make jemalloc
    cd src

## make

    cd src
    make > make.txt
    make clean

## compile

    gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_kv_master.o kp_kv_master.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0

    clang -emit-llvm -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_kv_master.bc kp_kv_master.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0

# nstore

## first time

    ./bootstrap
    ./configure

* replace with ´CXXFLAGS='-ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation'´ in configure.ac

## make

    cd src
    make > make.txt
    make clean

## compile

    cd src
    g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT sp_engine.o -MD -MP -MF .deps/sp_engine.Tpo -c -o sp_engine.o sp_engine.cpp

    cd src
    clang++ -DHAVE_CONFIG_H -I. -I.. -I./common -Wno-pointer-arith -Wall -Wextra -ggdb -O0 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT sp_engine.o -MD -MP -c -o sp_engine.o sp_engine.cpp

    cd test
    clang++ -DHAVE_CONFIG_H -I. -I.. -I./../src/common -Wno-pointer-arith -Wall -Wextra -ggdb -O0 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT test_plist.o -MD -MP -c -o test_plist.o test_plist.cpp

    cd test
    clang++ -emit-llvm -DHAVE_CONFIG_H -I. -I.. -I./../src/common -Wno-pointer-arith -Wall -Wextra -ggdb -O0 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT test_plist.bc -MD -MP -c -o test_plist.bc test_plist.cpp

# nvml

## first time

    ./build.sh
    ./clean.sh

## make

    cd src/examples/libpmemobj/
    make > make.txt
    make clean

## compile

    cd src/examples/libpmemobj/

    cc -c -o btree_map.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. btree_map.c

    cd tree_map
    clang -emit-llvm -c -o btree_map.bc -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. btree_map.c

# pmfs

    cd ~/git/NvmBenchmarks/pmfs

## make

    make V=1 > make.txt
    make clean

## compile

    gcc -Wp,-MD,/home/aksun/git/NvmBenchmarks/pmfs/.journal.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -I./arch/x86/include -Iarch/x86/include/generated/uapi -Iarch/x86/include/generated  -Iinclude -I./arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -DCONFIG_X86_X32_ABI -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -O2 --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fstack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -pg -mfentry -DCC_USING_FENTRY -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -DCC_HAVE_ASM_GOTO  -DMODULE  -D"KBUILD_STR(s)=#s" -D"KBUILD_BASENAME=KBUILD_STR(journal)"  -D"KBUILD_MODNAME=KBUILD_STR(pmfs)" -c -o /home/aksun/git/NvmBenchmarks/pmfs/.tmp_journal.o /home/aksun/git/NvmBenchmarks/pmfs/journal.c

    cd /usr/src/linux-headers-4.3.0-040300-generic
    clang -emit-llvm -Wp,-MD,/home/aksun/git/NvmBenchmarks/pmfs/.journal.o.d -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/5/include -I./arch/x86/include -Iarch/x86/include/generated/uapi -Iarch/x86/include/generated  -Iinclude -I./arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-format-security -Wno-address-of-packed-member -std=gnu89 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -DCONFIG_X86_X32_ABI -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -O0 -fstack-protector -fno-omit-frame-pointer -fno-optimize-sibling-calls -pg -mfentry -DCC_USING_FENTRY  -Wno-pointer-sign -fno-strict-overflow -DMODULE  -D"KBUILD_STR(s)=#s" -D"KBUILD_BASENAME=KBUILD_STR(journal)"  -D"KBUILD_MODNAME=KBUILD_STR(pmfs)" -c -o /home/aksun/git/NvmBenchmarks/pmfs/.tmp_journal.bc /home/aksun/git/NvmBenchmarks/pmfs/journal.c

# pmgd

## make

    make PMOPT=PM -n > make.txt
    make clean

## compile 

    g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/FixedAllocator.o -c src/FixedAllocator.cc

    clang++ -emit-llvm --std=c++11 -I./include -O0 -fomit-frame-pointer -funit-at-a-time -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wno-parentheses -Wno-conversion -Wno-sign-compare -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/FixedAllocator.bc -c src/FixedAllocator.cc



