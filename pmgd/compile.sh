make --no-print-directory -s -k -j8 -f Makeconf
echo "[CC] src/graph.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/graph.o -c src/graph.cc
echo "[CC] src/GraphConfig.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/GraphConfig.o -c src/GraphConfig.cc
echo "[CC] src/node.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/node.o -c src/node.cc
echo "[CC] src/edge.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/edge.o -c src/edge.cc
echo "[CC] src/property.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/property.o -c src/property.cc
echo "[CC] src/stringid.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/stringid.o -c src/stringid.cc
echo "[CC] src/StringTable.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/StringTable.o -c src/StringTable.cc
echo "[CC] src/PropertyList.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/PropertyList.o -c src/PropertyList.cc
echo "[CC] src/TransactionManager.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/TransactionManager.o -c src/TransactionManager.cc
echo "[CC] src/transaction.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/transaction.o -c src/transaction.cc
echo "[CC] src/Index.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/Index.o -c src/Index.cc
echo "[CC] src/IndexManager.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/IndexManager.o -c src/IndexManager.cc
echo "[CC] src/EdgeIndex.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/EdgeIndex.o -c src/EdgeIndex.cc
echo "[CC] src/IndexString.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/IndexString.o -c src/IndexString.cc
echo "[CC] src/AvlTree.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/AvlTree.o -c src/AvlTree.cc
echo "[CC] src/AvlTreeIndex.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/AvlTreeIndex.o -c src/AvlTreeIndex.cc
echo "[CC] src/FixedAllocator.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/FixedAllocator.o -c src/FixedAllocator.cc
echo "[CC] src/VariableAllocator.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/VariableAllocator.o -c src/VariableAllocator.cc
echo "[CC] src/FlexFixedAllocator.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/FlexFixedAllocator.o -c src/FlexFixedAllocator.cc
echo "[CC] src/FixSizeAllocator.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/FixSizeAllocator.o -c src/FixSizeAllocator.cc
echo "[CC] src/ChunkAllocator.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/ChunkAllocator.o -c src/ChunkAllocator.cc
echo "[CC] src/AllocatorUnit.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/AllocatorUnit.o -c src/AllocatorUnit.cc
echo "[CC] src/Allocator.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/Allocator.o -c src/Allocator.cc
echo "[CC] src/linux.o"
g++ --std=c++11 -I./include -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPM -DPMFLUSH=clflushopt -MP -MMD -DCOMMIT_ID="\"\"" -o src/linux.o -c src/linux.cc
echo "[AR] src/pmgd.lib"
ar cr src/pmgd.lib src/graph.o src/GraphConfig.o src/node.o src/edge.o src/property.o src/stringid.o src/StringTable.o src/PropertyList.o src/TransactionManager.o src/transaction.o src/Index.o src/IndexManager.o src/EdgeIndex.o src/IndexString.o src/AvlTree.o src/AvlTreeIndex.o src/FixedAllocator.o src/VariableAllocator.o src/FlexFixedAllocator.o src/FixSizeAllocator.o src/ChunkAllocator.o src/AllocatorUnit.o src/Allocator.o src/linux.o
echo "[INSTALL] lib/pmgd.lib"
install -D src/pmgd.lib lib/pmgd.lib
echo "[LD] src/libpmgd.so"
g++ -shared -o src/libpmgd.so src/graph.o src/GraphConfig.o src/node.o src/edge.o src/property.o src/stringid.o src/StringTable.o src/PropertyList.o src/TransactionManager.o src/transaction.o src/Index.o src/IndexManager.o src/EdgeIndex.o src/IndexString.o src/AvlTree.o src/AvlTreeIndex.o src/FixedAllocator.o src/VariableAllocator.o src/FlexFixedAllocator.o src/FixSizeAllocator.o src/ChunkAllocator.o src/AllocatorUnit.o src/Allocator.o src/linux.o
echo "[INSTALL] lib/libpmgd.so"
install -D src/libpmgd.so lib/libpmgd.so
echo "[CC] util/exception.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/exception.o -c util/exception.cc
echo "[CC] util/text.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/text.o -c util/text.cc
echo "[CC] util/neighbor.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/neighbor.o -c util/neighbor.cc
echo "[CC] util/dump_debug.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/dump_debug.o -c util/dump_debug.cc
echo "[CC] util/dump_gexf.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/dump_gexf.o -c util/dump_gexf.cc
echo "[CC] util/dump_pmgd.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/dump_pmgd.o -c util/dump_pmgd.cc
echo "[CC] util/load_tsv.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/load_tsv.o -c util/load_tsv.cc
echo "[CC] util/load_gson.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/load_gson.o -c util/load_gson.cc
echo "[YACC] util/loader.cc"
bison  -d -o util/loader.cc util/loader.y
echo "[CC] util/loader.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/loader.o -c util/loader.cc
echo "[LEX] util/scanner.cc"
flex  -outil/scanner.cc util/scanner.l
echo "[CC] util/scanner.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o util/scanner.o -c util/scanner.cc
echo "[AR] util/pmgd-util.lib"
ar cr util/pmgd-util.lib util/exception.o util/text.o util/neighbor.o util/dump_debug.o util/dump_gexf.o util/dump_pmgd.o util/load_tsv.o util/load_gson.o util/loader.o util/scanner.o
echo "[INSTALL] lib/pmgd-util.lib"
install -D util/pmgd-util.lib lib/pmgd-util.lib
echo "[LD] util/libpmgd-util.so"
g++ -shared -o util/libpmgd-util.so util/exception.o util/text.o util/neighbor.o util/dump_debug.o util/dump_gexf.o util/dump_pmgd.o util/load_tsv.o util/load_gson.o util/loader.o util/scanner.o
echo "[INSTALL] lib/libpmgd-util.so"
install -D util/libpmgd-util.so lib/libpmgd-util.so
echo "[JC] *.class"
javac -cp java -d java java/Property.java java/PropertyIterator.java java/Node.java java/NodeIterator.java java/Edge.java java/EdgeIterator.java java/Transaction.java java/Graph.java java/Exception.java java/PropertyPredicate.java java/StringID.java
touch java/.built
echo "[JH] java/Property.h"
javah -jni -force -cp java -o java/Property.h pmgd.Property
/bin/echo -e '/Lpmgd_Property_Time/s/_Time/_00024Time/\nw' | ed java/Property.h
echo "[JH] java/PropertyIterator.h"
javah -jni -force -cp java -o java/PropertyIterator.h pmgd.PropertyIterator
echo "[JH] java/Node.h"
javah -jni -force -cp java -o java/Node.h pmgd.Node
echo "[JH] java/NodeIterator.h"
javah -jni -force -cp java -o java/NodeIterator.h pmgd.NodeIterator
echo "[JH] java/Edge.h"
javah -jni -force -cp java -o java/Edge.h pmgd.Edge
echo "[JH] java/EdgeIterator.h"
javah -jni -force -cp java -o java/EdgeIterator.h pmgd.EdgeIterator
echo "[JH] java/Transaction.h"
javah -jni -force -cp java -o java/Transaction.h pmgd.Transaction
echo "[JH] java/Graph.h"
javah -jni -force -cp java -o java/Graph.h pmgd.Graph
echo "[JH] java/Exception.h"
javah -jni -force -cp java -o java/Exception.h pmgd.Exception
echo "[JH] java/PropertyPredicate.h"
javah -jni -force -cp java -o java/PropertyPredicate.h pmgd.PropertyPredicate
echo "[JH] java/StringID.h"
javah -jni -force -cp java -o java/StringID.h pmgd.StringID
echo "[CC] java/Property.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/Property.o -c java/Property.cc
echo "[CC] java/PropertyIterator.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/PropertyIterator.o -c java/PropertyIterator.cc
echo "[CC] java/Node.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/Node.o -c java/Node.cc
echo "[CC] java/NodeIterator.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/NodeIterator.o -c java/NodeIterator.cc
echo "[CC] java/Edge.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/Edge.o -c java/Edge.cc
echo "[CC] java/EdgeIterator.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/EdgeIterator.o -c java/EdgeIterator.cc
echo "[CC] java/Transaction.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/Transaction.o -c java/Transaction.cc
echo "[CC] java/Graph.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/Graph.o -c java/Graph.cc
echo "[CC] java/Exception.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/Exception.o -c java/Exception.cc
echo "[CC] java/PropertyPredicate.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/PropertyPredicate.o -c java/PropertyPredicate.cc
echo "[CC] java/StringID.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/StringID.o -c java/StringID.cc
echo "[CC] java/common.o"
g++ --std=c++11 -I./include -I./util -Ijava -I/usr/lib/jvm/java-8-openjdk-amd64/include -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -fPIC -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o java/common.o -c java/common.cc
echo "[LD] java/libpmgd-jni.so"
g++ -shared -o java/libpmgd-jni.so java/Property.o java/PropertyIterator.o java/Node.o java/NodeIterator.o java/Edge.o java/EdgeIterator.o java/Transaction.o java/Graph.o java/Exception.o java/PropertyPredicate.o java/StringID.o java/common.o -L lib -lpmgd-util -lpmgd
echo "[INSTALL] lib/libpmgd-jni.so"
install -D java/libpmgd-jni.so lib/libpmgd-jni.so
echo "[JAR] java/pmgd-jni.jar"
cd java && jar cf pmgd-jni.jar pmgd/Property.class pmgd/PropertyIterator.class pmgd/Node.class pmgd/NodeIterator.class pmgd/Edge.class pmgd/EdgeIterator.class pmgd/Transaction.class pmgd/Graph.class pmgd/Exception.class pmgd/PropertyPredicate.class pmgd/StringID.class pmgd/Graph\$OpenOptions.class pmgd/Graph\$IndexType.class pmgd/Node\$Direction.class pmgd/PropertyPredicate\$Op.class pmgd/Property\$Time.class
echo "[INSTALL] lib/pmgd-jni.jar"
install -D java/pmgd-jni.jar lib/pmgd-jni.jar
echo "[CC] tools/mkgraph.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o tools/mkgraph.o -c tools/mkgraph.cc
echo "[LINK] tools/mkgraph"
g++ -O3 -o tools/mkgraph tools/mkgraph.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] tools/loadgraph.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o tools/loadgraph.o -c tools/loadgraph.cc
echo "[LINK] tools/loadgraph"
g++ -O3 -o tools/loadgraph tools/loadgraph.o lib/pmgd.lib lib/pmgd-util.lib -ljsoncpp
echo "[CC] tools/dumpgraph.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror  -MP -MMD -o tools/dumpgraph.o -c tools/dumpgraph.cc
echo "[LINK] tools/dumpgraph"
g++ -O3 -o tools/dumpgraph tools/dumpgraph.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/alloctest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/alloctest.o -c test/alloctest.cc
echo "[LINK] test/alloctest"
g++ -o test/alloctest test/alloctest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/soltest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/soltest.o -c test/soltest.cc
echo "[LINK] test/soltest"
g++ -o test/soltest test/soltest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/nodeedgetest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/nodeedgetest.o -c test/nodeedgetest.cc
echo "[LINK] test/nodeedgetest"
g++ -o test/nodeedgetest test/nodeedgetest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/allocaborttest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/allocaborttest.o -c test/allocaborttest.cc
echo "[LINK] test/allocaborttest"
g++ -o test/allocaborttest test/allocaborttest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/listtest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/listtest.o -c test/listtest.cc
echo "[LINK] test/listtest"
g++ -o test/listtest test/listtest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/edgeindextest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/edgeindextest.o -c test/edgeindextest.cc
echo "[LINK] test/edgeindextest"
g++ -o test/edgeindextest test/edgeindextest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/propertytest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/propertytest.o -c test/propertytest.cc
echo "[LINK] test/propertytest"
g++ -o test/propertytest test/propertytest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/propertypredicatetest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/propertypredicatetest.o -c test/propertypredicatetest.cc
echo "[LINK] test/propertypredicatetest"
g++ -o test/propertypredicatetest test/propertypredicatetest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/propertychunktest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/propertychunktest.o -c test/propertychunktest.cc
echo "[LINK] test/propertychunktest"
g++ -o test/propertychunktest test/propertychunktest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/filtertest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/filtertest.o -c test/filtertest.cc
echo "[LINK] test/filtertest"
g++ -o test/filtertest test/filtertest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/txtest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/txtest.o -c test/txtest.cc
echo "[LINK] test/txtest"
g++ -o test/txtest test/txtest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/propertylisttest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/propertylisttest.o -c test/propertylisttest.cc
echo "[LINK] test/propertylisttest"
g++ -o test/propertylisttest test/propertylisttest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/stringtabletest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/stringtabletest.o -c test/stringtabletest.cc
echo "[LINK] test/stringtabletest"
g++ -o test/stringtabletest test/stringtabletest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/setproperty.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/setproperty.o -c test/setproperty.cc
echo "[LINK] test/setproperty"
g++ -o test/setproperty test/setproperty.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/load_tsv_test.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/load_tsv_test.o -c test/load_tsv_test.cc
echo "[LINK] test/load_tsv_test"
g++ -o test/load_tsv_test test/load_tsv_test.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/load_gson_test.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/load_gson_test.o -c test/load_gson_test.cc
echo "[LINK] test/load_gson_test"
g++ -O3 -o test/load_gson_test test/load_gson_test.o lib/pmgd.lib lib/pmgd-util.lib -ljsoncpp
echo "[CC] test/avltest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/avltest.o -c test/avltest.cc
echo "[LINK] test/avltest"
g++ -o test/avltest test/avltest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/chunklisttest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/chunklisttest.o -c test/chunklisttest.cc
echo "[LINK] test/chunklisttest"
g++ -o test/chunklisttest test/chunklisttest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/indextest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/indextest.o -c test/indextest.cc
echo "[LINK] test/indextest"
g++ -o test/indextest test/indextest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/indexrangetest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/indexrangetest.o -c test/indexrangetest.cc
echo "[LINK] test/indexrangetest"
g++ -o test/indexrangetest test/indexrangetest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/indexstringtest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/indexstringtest.o -c test/indexstringtest.cc
echo "[LINK] test/indexstringtest"
g++ -o test/indexstringtest test/indexstringtest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/statsindextest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/statsindextest.o -c test/statsindextest.cc
echo "[LINK] test/statsindextest"
g++ -o test/statsindextest test/statsindextest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/statsallocatortest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/statsallocatortest.o -c test/statsallocatortest.cc
echo "[LINK] test/statsallocatortest"
g++ -o test/statsallocatortest test/statsallocatortest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/reverseindexrangetest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/reverseindexrangetest.o -c test/reverseindexrangetest.cc
echo "[LINK] test/reverseindexrangetest"
g++ -o test/reverseindexrangetest test/reverseindexrangetest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/emailindextest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/emailindextest.o -c test/emailindextest.cc
echo "[LINK] test/emailindextest"
g++ -O3 -o test/emailindextest test/emailindextest.o lib/pmgd.lib lib/pmgd-util.lib -ljsoncpp
echo "[CC] test/removetest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/removetest.o -c test/removetest.cc
echo "[LINK] test/removetest"
g++ -o test/removetest test/removetest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/mtalloctest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/mtalloctest.o -c test/mtalloctest.cc
echo "[LINK] test/mtalloctest"
g++ -O3 -o test/mtalloctest test/mtalloctest.o lib/pmgd.lib lib/pmgd-util.lib -lpthread
echo "[CC] test/stripelocktest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/stripelocktest.o -c test/stripelocktest.cc
echo "[LINK] test/stripelocktest"
g++ -O3 -o test/stripelocktest test/stripelocktest.o lib/pmgd.lib lib/pmgd-util.lib -lpthread
echo "[CC] test/mtavltest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/mtavltest.o -c test/mtavltest.cc
echo "[LINK] test/mtavltest"
g++ -O3 -o test/mtavltest test/mtavltest.o lib/pmgd.lib lib/pmgd-util.lib -lpthread
echo "[CC] test/mtaddfindremovetest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/mtaddfindremovetest.o -c test/mtaddfindremovetest.cc
echo "[LINK] test/mtaddfindremovetest"
g++ -O3 -o test/mtaddfindremovetest test/mtaddfindremovetest.o lib/pmgd.lib lib/pmgd-util.lib -lpthread
echo "[CC] test/rotest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/rotest.o -c test/rotest.cc
echo "[LINK] test/rotest"
g++ -o test/rotest test/rotest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[JC] test/BindingsTest.class"
javac -cp lib/pmgd-jni.jar -d test test/BindingsTest.java
echo "[JC] test/DateTest.class"
javac -cp lib/pmgd-jni.jar -d test test/DateTest.java
echo "[CC] test/neighbortest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/neighbortest.o -c test/neighbortest.cc
echo "[LINK] test/neighbortest"
g++ -o test/neighbortest test/neighbortest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/aborttest.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/aborttest.o -c test/aborttest.cc
echo "[LINK] test/aborttest"
g++ -o test/aborttest test/aborttest.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/test720.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/test720.o -c test/test720.cc
echo "[LINK] test/test720"
g++ -o test/test720 test/test720.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/test750.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/test750.o -c test/test750.cc
echo "[LINK] test/test750"
g++ -o test/test750 test/test750.o lib/pmgd.lib lib/pmgd-util.lib
echo "[CC] test/test767.o"
g++ --std=c++11 -I./include -I./util -O3 -fomit-frame-pointer -funit-at-a-time -finline-limit=2000000 -fno-strict-aliasing -fno-threadsafe-statics -fnon-call-exceptions -Wall -Wpointer-arith -Wcast-align -Wwrite-strings -Wno-parentheses -Wno-conversion -Wno-sign-compare -Werror -DPMFLUSH=clflushopt -MP -MMD -o test/test767.o -c test/test767.cc
echo "[LINK] test/test767"
g++ -o test/test767 test/test767.o lib/pmgd.lib lib/pmgd-util.lib