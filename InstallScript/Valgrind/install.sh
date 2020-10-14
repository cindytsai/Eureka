cd /packages
git clone --depth 1 --branch VALGRIND_3_15_0 git://sourceware.org/git/valgrind.git
cd valgrind
./autogen.sh
./configure --prefix=/software/valgrind/3.15.0
make
make install
