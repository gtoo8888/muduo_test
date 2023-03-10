#!/bin/sh

set -x

rm -r build
# g++ pigg_echo_server.cc -I ./thrid/include -L ./thrid/lib -lmuduo_net -lmuduo_base -lpthread
if [ ! -d build ];then
    mkdir build
fi
cd build
cmake -DCMAKE_LIBRARY_PATH=./thrid/lib ..
make
# SOURCE_DIR=..
# BUILD_DIR=${BUILD_DIR:-./build}
# BUILD_TYPE=${BUILD_TYPE:-release}
# INSTALL_DIR=${INSTALL_DIR:-./${BUILD_TYPE}-install-cpp11}
# CXX=${CXX:-g++}

# # ln -sf $BUILD_DIR/$BUILD_TYPE-cpp11/compile_commands.json

# mkdir -p $BUILD_DIR/$BUILD_TYPE-cpp11 \
#   && cd $BUILD_DIR/$BUILD_TYPE-cpp11 \
#   && cmake \
#            -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
#            -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
#            -DCMAKE_EXPORT_COMPILE_COMMANDS=OFF \
#            $SOURCE_DIR \
#   && make $*

# Use the following command to run all the unit tests
# at the dir $BUILD_DIR/$BUILD_TYPE :
# CTEST_OUTPUT_ON_FAILURE=TRUE make test

# cd $SOURCE_DIR && doxygen

