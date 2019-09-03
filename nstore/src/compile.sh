make  all-recursive
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nstore'
Making all in src
make[2]: Entering directory '/home/aksun/git/NvmBenchmarks/nstore/src'
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT libpm.o -MD -MP -MF .deps/libpm.Tpo -c -o libpm.o libpm.cpp
mv -f .deps/libpm.Tpo .deps/libpm.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT utils.o -MD -MP -MF .deps/utils.Tpo -c -o utils.o utils.cpp
mv -f .deps/utils.Tpo .deps/utils.Po
rm -f libpm.a
ar cru libpm.a libpm.o utils.o 
ranlib libpm.a
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT main.o -MD -MP -MF .deps/main.Tpo -c -o main.o main.cpp
mv -f .deps/main.Tpo .deps/main.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT wal_engine.o -MD -MP -MF .deps/wal_engine.Tpo -c -o wal_engine.o wal_engine.cpp
mv -f .deps/wal_engine.Tpo .deps/wal_engine.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT sp_engine.o -MD -MP -MF .deps/sp_engine.Tpo -c -o sp_engine.o sp_engine.cpp
mv -f .deps/sp_engine.Tpo .deps/sp_engine.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT lsm_engine.o -MD -MP -MF .deps/lsm_engine.Tpo -c -o lsm_engine.o lsm_engine.cpp
mv -f .deps/lsm_engine.Tpo .deps/lsm_engine.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT opt_wal_engine.o -MD -MP -MF .deps/opt_wal_engine.Tpo -c -o opt_wal_engine.o opt_wal_engine.cpp
mv -f .deps/opt_wal_engine.Tpo .deps/opt_wal_engine.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT opt_sp_engine.o -MD -MP -MF .deps/opt_sp_engine.Tpo -c -o opt_sp_engine.o opt_sp_engine.cpp
mv -f .deps/opt_sp_engine.Tpo .deps/opt_sp_engine.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT opt_lsm_engine.o -MD -MP -MF .deps/opt_lsm_engine.Tpo -c -o opt_lsm_engine.o opt_lsm_engine.cpp
mv -f .deps/opt_lsm_engine.Tpo .deps/opt_lsm_engine.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT test_benchmark.o -MD -MP -MF .deps/test_benchmark.Tpo -c -o test_benchmark.o test_benchmark.cpp
mv -f .deps/test_benchmark.Tpo .deps/test_benchmark.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT ycsb_benchmark.o -MD -MP -MF .deps/ycsb_benchmark.Tpo -c -o ycsb_benchmark.o ycsb_benchmark.cpp
mv -f .deps/ycsb_benchmark.Tpo .deps/ycsb_benchmark.Po
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT tpcc_benchmark.o -MD -MP -MF .deps/tpcc_benchmark.Tpo -c -o tpcc_benchmark.o tpcc_benchmark.cpp
mv -f .deps/tpcc_benchmark.Tpo .deps/tpcc_benchmark.Po
/bin/bash ../libtool  --tag=CXX   --mode=link g++ -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -pthread  -o nstore main.o wal_engine.o sp_engine.o lsm_engine.o opt_wal_engine.o opt_sp_engine.o opt_lsm_engine.o test_benchmark.o ycsb_benchmark.o tpcc_benchmark.o utils.o libpm.a -lrt 
libtool: link: g++ -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -pthread -o nstore main.o wal_engine.o sp_engine.o lsm_engine.o opt_wal_engine.o opt_sp_engine.o opt_lsm_engine.o test_benchmark.o ycsb_benchmark.o tpcc_benchmark.o utils.o  libpm.a -lrt -pthread
g++ -DHAVE_CONFIG_H -I. -I..  -I./common -Wno-pointer-arith   -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -MT pmem_check.o -MD -MP -MF .deps/pmem_check.Tpo -c -o pmem_check.o pmem_check.cpp
mv -f .deps/pmem_check.Tpo .deps/pmem_check.Po
/bin/bash ../libtool  --tag=CXX   --mode=link g++ -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -pthread  -o pmem_check pmem_check.o libpm.a -lrt 
libtool: link: g++ -Wall -Wextra -ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation -std=c++11 -pthread -o pmem_check pmem_check.o  libpm.a -lrt -pthread
make[2]: Leaving directory '/home/aksun/git/NvmBenchmarks/nstore/src'
Making all in test
make[2]: Entering directory '/home/aksun/git/NvmBenchmarks/nstore/test'
make[2]: Nothing to be done for 'all'.
make[2]: Leaving directory '/home/aksun/git/NvmBenchmarks/nstore/test'
make[2]: Entering directory '/home/aksun/git/NvmBenchmarks/nstore'
make[2]: Leaving directory '/home/aksun/git/NvmBenchmarks/nstore'
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nstore'