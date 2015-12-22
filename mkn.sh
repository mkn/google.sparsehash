

./configure --prefix=$PWD
make
make install
git update-index --assume-unchanged configure