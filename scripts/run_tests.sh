#!/bin/bash
IMAGE=${1:-bjodahimg16volatile}
TAG=${2:-latest}
ABS_REPO_PATH=$(unset CDPATH && cd "$(dirname "$0")/.." && echo $PWD)
mkdir -p ${ABS_REPO_PATH}/match3-build
docker run --rm --name bjodahimg16volatile-tests -e TERM -v ${ABS_REPO_PATH}/match3-build:/match3-build -it $IMAGE:$TAG \
       bash -c "\
cd /opt/emsdk_portable && ./emsdk activate latest && . emsdk_env.sh && \
cd /match3-build && which em++ && git clone --recursive git://github.com/modern-cpp-examples/match3.git && \
cmake -DCMAKE_CXX_COMPILER=em++ match3 && make web"

if [ $? -ne 0 ]; then
    echo >&2 "Test failed"
fi
