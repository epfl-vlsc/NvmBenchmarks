gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_kvstore.o kp_kvstore.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_kv_local.o kp_kv_local.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_kv_master.o kp_kv_master.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/vector.o vector-cdds/vector.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/vector64.o vector-cdds/vector64.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/hash_table.o hash_table/hash.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/queue.o threadpool/queue.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/threadpool.o threadpool/threadpool.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_recovery.o kp_recovery.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/kp_common.o kp_common.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -c -o obj/clibpm.o clibpm.c -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -o test_local_master tests/test_local_master.c obj/kp_kvstore.o obj/kp_kv_local.o obj/kp_kv_master.o obj/vector.o obj/vector64.o obj/hash_table.o obj/queue.o obj/threadpool.o obj/kp_recovery.o obj/kp_common.o obj/clibpm.o -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0  -L../lib -L./malloc/lib -lpthread -lrt -lm -ltcmalloc_minimal 
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -shared -Wl,-soname,libkp_kvstore.so.1 -o libkp_kvstore.so.1.0.1 obj/kp_kvstore.o obj/kp_kv_local.o obj/kp_kv_master.o obj/vector.o obj/vector64.o obj/hash_table.o obj/queue.o obj/threadpool.o obj/kp_recovery.o obj/kp_common.o obj/clibpm.o -lc
rm -f ../lib/*.so*
mv libkp_kvstore.so.1.0.1 ../lib
ln -s ../lib/libkp_kvstore.so.1.0.1 ../lib/libkp_kvstore.so.1
ln -s ../lib/libkp_kvstore.so.1.0.1 ../lib/libkp_kvstore.so
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0    -c -o evaluation/evaluation.o evaluation/evaluation.c
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0    -c -o clibpm.o clibpm.c
gcc -ggdb -O0 -std=c99 -D_ENABLE_FTRACE -o evaluation/evaluation evaluation/evaluation.o  -Ivector-cdds/ -Ihash_table/ -Ithreadpool/ -I../include  -D_GNU_SOURCE -Wall -fPIC -O0  -L../lib -L./malloc/lib -lpthread -lrt -lm -ltcmalloc_minimal   -lkp_kvstore