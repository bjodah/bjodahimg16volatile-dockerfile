# DO NOT EDIT, This Dockerfile is generated from ./tools/10_generate_Dockerfile.sh
FROM bjodah/bjodahimg16base:v1.1
MAINTAINER Björn Dahlgren <bjodah@DELETEMEgmail.com>
RUN \
    mkdir /opt/nvm && export NVM_DIR=/opt/nvm && git clone https://github.com/creationix/nvm.git "$NVM_DIR" && cd "$NVM_DIR" && \
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin` && . "$NVM_DIR/nvm.sh" && \
    nvm install node && cd /opt && wget --quiet https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz && \
    tar xzf emsdk-portable.tar.gz && rm emsdk-portable.tar.gz && cd emsdk_portable/ && ./emsdk update && ./emsdk install latest

