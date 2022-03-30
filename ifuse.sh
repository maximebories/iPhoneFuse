#!/bin/sh

#
#   ifuse manual installation since macfuse is closed source. You need AFS2 installed on the iPhone side.
#

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


# After a reboot if you have restricted KEXT use
idevicepair pair
umount ifuse@macfuse0
cd ~
mkdir -p iPhone
ifuse iPhone --root