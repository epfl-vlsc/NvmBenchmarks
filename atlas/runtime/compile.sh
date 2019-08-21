MODE=$1 
if [ "$MODE" == "plg" ] ;then
	cd ../compiler-plugin
    ./build_plugin
    cd ../runtime
elif [ "$MODE" == "rem" ] ;then
  rm -r build
elif [ "$MODE" == "build" ] ;then
	mkdir build
    cd build
    cmake ..
    make VERBOSE=1 -j8
    cd ..
elif [ "$MODE" == "make" ] ;then
    cd build
    make VERBOSE=1 -j8
    cd ..
else
	echo "plg, rem, build, make"
fi