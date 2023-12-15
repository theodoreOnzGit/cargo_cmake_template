#!/bin/bash

echo "build_cmake: builds the cpp project according to CMakeLists.txt in current dir\n"
build_cmake(){
	mkdir build 
	cd build 
	cmake .. 
	make
	cd ..
}

echo "watch_cmake: uses cargo watch to watch the cmake_project \n"
watch_cmake(){
	cargo watch --ignore ./build \
		--  mkdir build && cmake -S . -B ./build 
}

echo "clean_cmake: cleans the build directory in current dir\n"
clean_cmake(){
	rm -r build
}
