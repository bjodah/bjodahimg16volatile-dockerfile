#!/bin/bash
IMAGE=${1:-bjodahimg16volatile}
TAG=${2:-latest}
mkdir -p match3-build
docker run --rm --name bjodahimg16volatile-tests -v match3-build:/match3-build -it $IMAGE:$TAG \
       bash -c "\
cd /opt/emsdk_portable && ./emsdk activate latest && . emsdk_env.sh && \
cd /match3-build && which em++ && git clone --recursive git://github.com/modern-cpp-examples/match3.git && \
cmake -DCMAKE_CXX_COMPILER=em++ match3 && make web"

if [ $? -ne 0 ]; then
    echo >&2 "Test failed"
fi
