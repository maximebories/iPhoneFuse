#!/bin/sh

# Install dependencies with brew
brew install autoconf automake libtool pkg-config glib libimobiledevice libplist cython openssl

# Install libimobiledevice-glue HEAD
git clone https://github.com/libimobiledevice/libimobiledevice-glue.git
cd libimobiledevice-glue
./autogen.sh
make
make install
cd ..

# Install libusbmuxd HEAD
git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd
./autogen.sh
make
make install
sudo make install
cd ..

# Install libimobiledevice HEAD
git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl/lib/pkgconfig"
./autogen.sh
make
sudo make install
cd ..

# Install ifuse HEAD
git clone https://github.com/libimobiledevice/ifuse.git
cd ifuse
./autogen.sh
make
sudo make install
