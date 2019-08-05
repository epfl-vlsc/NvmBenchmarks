# nvml

    ./build.sh > make.txt

    ./clean.sh

# pmfs

    make V=1 > make.txt

    make clean

# echo

    cd src

* first time ´make tcmalloc´

    make > make.txt

    make clean

# nstore

* first time
    * ´./bootstrap´
    * ´./configure´

* replace with ´CXXFLAGS='-ggdb -O3 -D_ENABLE_FTRACE -fsized-deallocation'´ in configure.ac

    cd src

    make > make.txt

    make clean

# redis


