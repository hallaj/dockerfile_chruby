#!/usr/bin/env bash
# ruby-install

BUILD_PATH=`mktemp -d`
VERSION=0.5.0

wget -qO ${BUILD_PATH}/ruby-install-${VERSION}.tar.gz https://github.com/postmodern/ruby-install/archive/v${VERSION}.tar.gz
tar -xf ${BUILD_PATH}/ruby-install-${VERSION}.tar.gz -C ${BUILD_PATH}
cd ${BUILD_PATH}/ruby-install-${VERSION}/ && make install
