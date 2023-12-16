#!/bin/bash

cmake -S ./c_src -B ./c_src/build
make -C ./c_src/build
./c_src/build/hello_world

