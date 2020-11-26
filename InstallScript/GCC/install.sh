cd /packages
curl -o gcc-9.3.0.tar.gz http://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-9.3.0/gcc-9.3.0.tar.gz
tar zxvf gcc-9.3.0.tar.gz
rm -rf gcc-9.3.0.tar.gz
cd gcc-9.3.0
./contrib/download_prerequisites
./configure --disable-multilib --enable-languages=c,c++,fortran --prefix=/software/gcc/9.3.0
make
make install