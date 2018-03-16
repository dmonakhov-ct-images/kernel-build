#!/bin/sh -xe

KBLD_COMMIT=${KBLD_COMMIT:-HEAD}
mkdir bldtmp
cd bldtmp
git clone https://github.com/dmonakhov/kbuild-util kbld
cd kbld
git reset --hard $KBLD_COMMIT
make  install
cd ../
# Build cleanup
cd ../ && \
rm -rf bldtmp

