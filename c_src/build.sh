#!/bin/bash

echo "build_cmake: builds the cpp project according to CMakeLists.txt in current dir\n"
build_cmake(){
	mkdir build 
	cmake -S . -B ./build
	make -C ./build
}

echo "watch_cmake: uses cargo watch to watch the cmake_project 
and run cmake\n"
watch_cmake(){
	cargo watch --ignore ./c_src/build \
		-- "cmake -S ./c_src -B ./c_src/build"
}

echo "clean_cmake: cleans the build directory in current dir\n"
clean_cmake(){
	rm -r build/*
}
