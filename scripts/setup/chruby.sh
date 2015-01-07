#!/usr/bin/env bash
# chruby setup

BUILD_PATH=`mktemp -dq`
VERSION=0.3.9

if [ ! -e `which wget` ]; then
  echo "missing wget"
  exit 1
fi

if [ ! -e `which make` ]; then
  echo "missing make"
  exit 1
fi

wget -qO ${BUILD_PATH}/chruby-${VERSION}.tar.gz https://github.com/postmodern/chruby/archive/v${VERSION}.tar.gz

tar xf ${BUILD_PATH}/chruby-${VERSION}.tar.gz -C ${BUILD_PATH}
cd ${BUILD_PATH}/chruby-${VERSION} && make install
