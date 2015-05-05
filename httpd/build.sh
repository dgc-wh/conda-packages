#/bin/bash -eu

# Download APR
mkdir -p $SRC_DIR/srclib/apr
curl https://archive.apache.org/dist/apr/apr-1.5.2.tar.gz | tar -xz -C $SRC_DIR/srclib/apr --strip-components=1
mkdir -p $SRC_DIR/srclib/apr-util
curl https://archive.apache.org/dist/apr/apr-util-1.5.4.tar.gz | tar -xz -C $SRC_DIR/srclib/apr-util --strip-components=1

./configure --help

./configure \
    --prefix=$PREFIX \
    --with-included-apr
make
make install