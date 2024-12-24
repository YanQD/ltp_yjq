#!/bin/bash

arch=${1:-"riscv64"}

echo "arch: ${arch}"

rm -rf "./build_${arch}"

mkdir "build_${arch}"

make distclean > /dev/null

make autotools

export CROSS_COMPILE=riscv64-unknown-linux-gnu-
export CC="${CROSS_COMPILE}gcc"
export CXX="${CROSS_COMPILE}g++"
export AR="${CROSS_COMPILE}ar"
export RANLIB="${CROSS_COMPILE}ranlib"

# # 添加静态编译相关的环境变量
# export LDFLAGS="-static"
# export CFLAGS="-static"
# export CXXFLAGS="-static"

# 可能需要的额外静态库
# export LIBS="-ldl -lm -lc -lpthread"

if [ "${arch}" = "riscv64" ]
then
    echo "create riscv64 static test examples"
    ./configure --host=riscv64-unknown-linux-gnu \
        --prefix="$(pwd)/build_${arch}" \
        --enable-static \
        --disable-shared \
        CC="${CC}" \
        CXX="${CXX}" \
        AR="${AR}" \
        RANLIB="${RANLIB}" \
        # CFLAGS="${CFLAGS}" \
        # CXXFLAGS="${CXXFLAGS}" \
        # LDFLAGS="${LDFLAGS}" \
        # LIBS="${LIBS}"
else 
    echo "create x86_64 test examples"
    ./configure --prefix="$(pwd)/build_${arch}" \
                > /dev/null
fi

make -j6 > /dev/null

make install -j6 > /dev/null

rm -rf ../Starry/testcases/build_riscv64

echo "copy data into starry!"
cp -r ./build_riscv64 ../Starry/testcases/