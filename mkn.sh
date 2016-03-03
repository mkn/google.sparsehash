

CXX=
if [ -z `which $CXX` ]; then
	CXX=clang++
fi
if [ -z `which $CXX` ]; then
	CXX=g++
fi
if [ -z `which $CXX` ]; then
	echo NO COMPILER FOUND g++/clang++. ERROR EXIT
	exit 3
fi
./configure --prefix=$PWD
make CXX=${CXX}
make install
git update-index --assume-unchanged configure
