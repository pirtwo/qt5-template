@echo off

IF EXIST build (
    rmdir /s /q build
)

mkdir build

cmake -S . -B build

cd build

cmake --build .