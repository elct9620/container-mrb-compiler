#!/usr/bin/env bash

SOURCE_PATH=$1
BUILD_PATH=$2

cd $SOURCE_PATH
if [ ! -f build_config.rb ]; then
  echo "build_config.rb is necessary!"
  exit 1
fi

MRUBY_CONFIG="$(pwd)/build_config.rb"

cd $MRUBY_PATH
MRUBY_CONFIG=$MRUBY_CONFIG ./minirake

if [ ! -z $BUILD_PATH ]; then
  cp -r $MRUBY_PATH/build/host $2
fi


