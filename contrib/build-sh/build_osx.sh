#!/bin/sh
cd ../..
BHP_ROOT=$(pwd)
echo -ne '\n' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install autoconf automake berkeley-db4 libtool boost miniupnpc openssl pkg-config protobuf libevent qt
./autogen.sh
./configure
make
mkdir -p release
cp src/bluehostd $BHP_ROOT/release
cp src/bluehost-tx $BHP_ROOT/release
cp src/bluehost-cli $BHP_ROOT/release
cp src/qt/bluehost-qt $BHP_ROOT/release
make deploy
echo "Done. your 'Bluehost-qt.dmg' is ready"