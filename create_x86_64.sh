#!/bin/bash

arch=${1:-"x86_64"}

echo "arch: ${arch}"

rm -rf "./build_${arch}"

mkdir "build_${arch}"

make distclean > /dev/null

make autotools

if [ "${arch}" = "riscv64" ]
then
    echo "create riscv64 test examples"
    ./configure --host=riscv64-unknown-linux-gnu \
                --prefix="$(pwd)/build_${arch}" \
                > /dev/null
else 
    echo "create x86_64 test examples"
    ./configure --prefix="$(pwd)/build_${arch}" \
                > /dev/null
fi

make -j6 > /dev/null

make install -j6 > /dev/null

rm -rf ../Starry/testcases/build_x86_64

echo "copy data into starry!"

cp -r ./build_x86_64 ../Starry/testcases/