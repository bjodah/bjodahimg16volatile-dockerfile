FROM bjodah/bjodahimg16base:v1.2
MAINTAINER Björn Dahlgren <bjodah@DELETEMEgmail.com>
RUN \
    #mkdir /opt/nvm && export NVM_DIR=/opt/nvm && git clone https://github.com/creationix/nvm.git "$NVM_DIR" && cd "$NVM_DIR" && \
    #git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin` && . "$NVM_DIR/nvm.sh" && \
    #nvm install node &&
    cd /tmp && curl -Ls https://cmake.org/files/v3.10/cmake-3.10.2.tar.gz | tar xz && \
    cd cmake-3.10.2 && ./bootstrap && make && make install && \
    cd /opt && curl -Ls https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz | tar xz && \
    cd emsdk-portable/ && ./emsdk update && ./emsdk install latest
