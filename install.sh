#!/bin/bash

if [ `id -u` != 0 ]; then
  echo "Please run the script as root."
  exit 1
fi

CURRENT_DIR="$(cd `dirname $0` && pwd)"

mkdir -p /usr/local/lib/java
mkdir -p /usr/local/bin

cp "${CURRENT_DIR}/lib/yuicompressor.jar" /usr/local/lib/java
cp "${CURRENT_DIR}/bin/yuicompressor" /usr/local/bin

chmod a+x /usr/local/bin/yuicompressor