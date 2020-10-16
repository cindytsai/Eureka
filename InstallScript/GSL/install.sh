cd /packages
curl -o gsl-2.6.tar.gz ftp://ftp.gnu.org/gnu/gsl/gsl-2.6.tar.gz
tar zxvf gsl-2.6.tar.gz
rm -f gsl-2.6.tar.gz
cd gsl-2.6
./configure CC=gcc CFLAGS=-O3 CXX=g++ CXXFLAGS=-O3 --prefix=/software/gsl/2.6
make
make check
make install
make installcheck