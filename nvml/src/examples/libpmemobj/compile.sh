make -C pminvaders all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pminvaders'
cc -c -o pminvaders.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. pminvaders.c
cc -o pminvaders -Wl,-rpath=../../../debug -L../../../debug  pminvaders.o -lpmemobj -lpmem -pthread -lncurses -ltinfo
cc -c -o pminvaders2.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. pminvaders2.c
cc -o pminvaders2 -Wl,-rpath=../../../debug -L../../../debug  pminvaders2.o -lpmemobj -lpmem -pthread -lncurses -ltinfo
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pminvaders'
make -C pmemlog all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pmemlog'
cc -c -o obj_pmemlog.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. obj_pmemlog.c
cc -o obj_pmemlog -Wl,-rpath=../../../debug -L../../../debug  obj_pmemlog.o -lpmemobj -lpmem -pthread
cc -c -o obj_pmemlog_macros.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. obj_pmemlog_macros.c
cc -o obj_pmemlog_macros -Wl,-rpath=../../../debug -L../../../debug  obj_pmemlog_macros.o -lpmemobj -lpmem -pthread
cc -c -o obj_pmemlog_minimal.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. obj_pmemlog_minimal.c
cc -o obj_pmemlog_minimal -Wl,-rpath=../../../debug -L../../../debug  obj_pmemlog_minimal.o -lpmemobj -lpmem -pthread
cc -c -o obj_pmemlog_simple.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. obj_pmemlog_simple.c
cc -o obj_pmemlog_simple -Wl,-rpath=../../../debug -L../../../debug  obj_pmemlog_simple.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pmemlog'
make -C pmemblk all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pmemblk'
cc -c -o obj_pmemblk.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. obj_pmemblk.c
cc -o obj_pmemblk -Wl,-rpath=../../../debug -L../../../debug  obj_pmemblk.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pmemblk'
make -C string_store all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/string_store'
cc -c -o writer.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. writer.c
cc -o writer -Wl,-rpath=../../../debug -L../../../debug  writer.o -lpmemobj -lpmem -pthread
cc -c -o reader.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. reader.c
cc -o reader -Wl,-rpath=../../../debug -L../../../debug  reader.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/string_store'
make -C string_store_tx all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/string_store_tx'
cc -c -o writer.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. writer.c
cc -o writer -Wl,-rpath=../../../debug -L../../../debug  writer.o -lpmemobj -lpmem -pthread
cc -c -o reader.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. reader.c
cc -o reader -Wl,-rpath=../../../debug -L../../../debug  reader.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/string_store_tx'
make -C string_store_tx_type all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/string_store_tx_type'
cc -c -o writer.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. writer.c
cc -o writer -Wl,-rpath=../../../debug -L../../../debug  writer.o -lpmemobj -lpmem -pthread
cc -c -o reader.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. reader.c
cc -o reader -Wl,-rpath=../../../debug -L../../../debug  reader.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/string_store_tx_type'
make -C hashmap all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/hashmap'
cc -c -o hashmap_atomic.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. hashmap_atomic.c
ld -o libhashmap_atomic.o -r hashmap_atomic.o
cc -shared -o libhashmap_atomic.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libhashmap_atomic.so libhashmap_atomic.o
cc -c -o hashmap_tx.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. hashmap_tx.c
ld -o libhashmap_tx.o -r hashmap_tx.o
cc -shared -o libhashmap_tx.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libhashmap_tx.so libhashmap_tx.o
ar rv libhashmap_atomic.a libhashmap_atomic.o
r - libhashmap_atomic.o
ar rv libhashmap_tx.a libhashmap_tx.o
r - libhashmap_tx.o
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/hashmap'
make -C tree_map all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/tree_map'
cc -c -o ctree_map.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. ctree_map.c
ld -o libctree_map.o -r ctree_map.o
cc -shared -o libctree_map.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libctree_map.so libctree_map.o
cc -c -o btree_map.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. btree_map.c
ld -o libbtree_map.o -r btree_map.o
cc -shared -o libbtree_map.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libbtree_map.so libbtree_map.o
cc -c -o rbtree_map.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. rbtree_map.c
ld -o librbtree_map.o -r rbtree_map.o
cc -shared -o librbtree_map.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=librbtree_map.so librbtree_map.o
ar rv libctree_map.a libctree_map.o
r - libctree_map.o
ar rv libbtree_map.a libbtree_map.o
r - libbtree_map.o
ar rv librbtree_map.a librbtree_map.o
r - librbtree_map.o
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/tree_map'
make -C map all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/map'
NOTE: Skipping kv_server because libuv is missing -- see src/examples/libpmemobj/map/README for details.
cc -c -o map_ctree.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -fPIC -I../../../include -I. map_ctree.c
cc -c -o map.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -fPIC -I../../../include -I. map.c
ld -o libmap_ctree.o -r map_ctree.o map.o ../tree_map/libctree_map.a
cc -shared -o libmap_ctree.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libmap_ctree.so libmap_ctree.o
cc -c -o map_btree.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -fPIC -I../../../include -I. map_btree.c
ld -o libmap_btree.o -r map_btree.o map.o ../tree_map/libbtree_map.a
cc -shared -o libmap_btree.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libmap_btree.so libmap_btree.o
cc -c -o map_rbtree.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -fPIC -I../../../include -I. map_rbtree.c
ld -o libmap_rbtree.o -r map_rbtree.o map.o ../tree_map/librbtree_map.a
cc -shared -o libmap_rbtree.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libmap_rbtree.so libmap_rbtree.o
cc -c -o map_hashmap_atomic.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -fPIC -I../../../include -I. map_hashmap_atomic.c
ld -o libmap_hashmap_atomic.o -r map_hashmap_atomic.o map.o ../hashmap/libhashmap_atomic.a
cc -shared -o libmap_hashmap_atomic.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libmap_hashmap_atomic.so libmap_hashmap_atomic.o
cc -c -o map_hashmap_tx.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -fPIC -I../../../include -I. map_hashmap_tx.c
ld -o libmap_hashmap_tx.o -r map_hashmap_tx.o map.o ../hashmap/libhashmap_tx.a
cc -shared -o libmap_hashmap_tx.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libmap_hashmap_tx.so libmap_hashmap_tx.o
ld -o libmap.o -r map.o map_ctree.o map_btree.o map_rbtree.o map_hashmap_atomic.o map_hashmap_tx.o ../tree_map/libctree_map.a ../tree_map/libbtree_map.a ../tree_map/librbtree_map.a ../hashmap/libhashmap_atomic.a ../hashmap/libhashmap_tx.a
cc -shared -o libmap.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libmap.so libmap.o
ar rv libmap_ctree.a libmap_ctree.o
r - libmap_ctree.o
ar rv libmap_btree.a libmap_btree.o
r - libmap_btree.o
ar rv libmap_rbtree.a libmap_rbtree.o
r - libmap_rbtree.o
ar rv libmap_hashmap_atomic.a libmap_hashmap_atomic.o
r - libmap_hashmap_atomic.o
ar rv libmap_hashmap_tx.a libmap_hashmap_tx.o
r - libmap_hashmap_tx.o
ar rv libmap.a libmap.o
r - libmap.o
cc -c -o mapcli.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -I../../../include -I. mapcli.c
cc -o mapcli -Wl,-rpath=../../../debug -L../../../debug  mapcli.o libmap.a -lpmemobj -pthread
cc -c -o data_store.o -std=gnu99 -ggdb -Wall -Werror  -I../ -I../hashmap -I../tree_map -I../../../include -I. data_store.c
cc -o data_store -Wl,-rpath=../../../debug -L../../../debug  data_store.o libmap.a -lpmemobj -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/map'
make -C pmemobjfs all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pmemobjfs'
NOTE: Skipping pmemobjfs because fuse (version >= 2.9.1) is missing -- see src/examples/libpmemobj/pmemobjfs/README for details.
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pmemobjfs'
make -C libart all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/libart'
cc -c -o art.o -std=gnu99 -ggdb -Wall -Werror  -fPIC -I../../../include -I. art.c
ld -o libart.o -r art.o
cc -shared -o libart.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libart.so libart.o
ar rv libart.a libart.o
r - libart.o
cc -c -o arttree.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. arttree.c
cc -o arttree -Wl,-rpath=../../../debug -L../../../debug  -Wl,-rpath=. -L. arttree.o -lpmemobj -pthread -lart
cc -c -o arttree_structures.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. arttree_structures.c
cc -c -o arttree_examine.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. arttree_examine.c
cc -c -o arttree_search.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. arttree_search.c
cc -o arttree_structures -Wl,-rpath=../../../debug -L../../../debug  -Wl,-rpath=. -L. arttree_structures.o arttree_examine.o arttree_search.o -lpmemobj -pthread -lart
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/libart'
make -C array all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/array'
cc -c -o array.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. array.c
cc -o array -Wl,-rpath=../../../debug -L../../../debug  array.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/array'
make -C linkedlist all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/linkedlist'
cc -c -o fifo.o -std=gnu99 -ggdb -Wall -Werror  -I../../../include -I. fifo.c
cc -o fifo -Wl,-rpath=../../../debug -L../../../debug  fifo.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/linkedlist'
make -C cpp all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/cpp'
g++ -c -o queue.o -std=c++11 -ggdb -Wall -Werror  -I../../../include -I. queue.cpp
g++ -o queue -Wl,-rpath=../../../debug -L../../../debug  queue.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/cpp'
make -C pman all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pman'
g++ -c -o pman.o -std=c++11 -ggdb -Wall -Werror  -I../../../include -I. -I../ pman.cpp
g++ -o pman -Wl,-rpath=../../../debug -L../../../debug  pman.o -lpmemobj -lpmem -pthread -lncurses -ltinfo
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/pman'
make -C cpp_map all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/cpp_map'
g++ -c -o map_cli.o -std=c++11 -ggdb -Wall -Werror  -I../../../include -I. map_cli.cpp
g++ -o map_cli -Wl,-rpath=../../../debug -L../../../debug  map_cli.o -lpmemobj -lpmem -pthread
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/cpp_map'
make -C panaconda all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/panaconda'
g++ -c -o panaconda.o -std=c++11 -ggdb -Wall -Werror  -I../../../include -I. -I../ panaconda.cpp
g++ -o panaconda -Wl,-rpath=../../../debug -L../../../debug  panaconda.o -lpmemobj -lpmem -pthread -lncurses -ltinfo
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/panaconda'
make -C doc_snippets all
make[1]: Entering directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/doc_snippets'
g++ -c -o persistent.o -std=c++11 -ggdb -Wall -Werror  -fPIC -I../../../include -I. persistent.cpp
g++ -c -o make_persistent.o -std=c++11 -ggdb -Wall -Werror  -fPIC -I../../../include -I. make_persistent.cpp
g++ -c -o pool.o -std=c++11 -ggdb -Wall -Werror  -fPIC -I../../../include -I. pool.cpp
g++ -c -o transaction.o -std=c++11 -ggdb -Wall -Werror  -fPIC -I../../../include -I. transaction.cpp
g++ -c -o mutex.o -std=c++11 -ggdb -Wall -Werror  -fPIC -I../../../include -I. mutex.cpp
ld -o libsnippets.o -r persistent.o make_persistent.o pool.o transaction.o mutex.o
cc -shared -o libsnippets.so -Wl,-rpath=../../../debug -L../../../debug  -Wl,-shared,-soname=libsnippets.so libsnippets.o
ar rv libsnippets.a libsnippets.o
r - libsnippets.o
make[1]: Leaving directory '/home/aksun/git/NvmBenchmarks/nvml/src/examples/libpmemobj/doc_snippets'
cc -c -o manpage.o -std=gnu99 -ggdb -Wall -Werror  -I../../include -I. manpage.c
cc -o manpage -Wl,-rpath=../../debug -L../../debug  manpage.o -lpmemobj -lpmem -pthread -lm -pthread
cc -c -o btree.o -std=gnu99 -ggdb -Wall -Werror  -I../../include -I. btree.c
cc -o btree -Wl,-rpath=../../debug -L../../debug  btree.o -lpmemobj -lpmem -pthread -lm -pthread
cc -c -o pi.o -std=gnu99 -ggdb -Wall -Werror  -I../../include -I. pi.c
cc -o pi -Wl,-rpath=../../debug -L../../debug  pi.o -lpmemobj -lpmem -pthread -lm -pthread
cc -c -o lists.o -std=gnu99 -ggdb -Wall -Werror  -I../../include -I. lists.c
cc -o lists -Wl,-rpath=../../debug -L../../debug  lists.o -lpmemobj -lpmem -pthread -lm -pthread