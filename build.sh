#!/bin/bash

if [ -d "build" ]; then
    rm -R build
fi

mkdir build

cmake -S . -B build

cd build || exit

cmake --build .
