

CXX=g++
[ -z "$(which clang++)" ] || CXX=clang++
./configure --prefix=$PWD
make CXX=${CXX}
make CXX=${CXX} install
git update-index --assume-unchanged configure
