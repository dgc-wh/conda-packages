#!/bin/bash -eu

unset ARCH  # https://github.com/redis/hiredis-rb/issues/2

# pushd deps
# make hiredis jemalloc linenoise lua

# popd

make distclean

# make

make PREFIX=$PREFIX install
make test
