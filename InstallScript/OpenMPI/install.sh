cd /packages
curl -o openmpi-3.1.5.tar.gz http://download.open-mpi.org/release/open-mpi/v3.1/openmpi-3.1.5.tar.gz
tar zxvf openmpi-3.1.5.tar.gz
rm -f openmpi-3.1.5.tar.gz
cd openmpi-3.1.5
export PATH=/software/gcc/9.3.0/bin:$PATH
export LD_LIBRARY_PATH=/software/gcc/9.3.0/lib64:/software/gcc/9.3.0/lib:$LD_LIBRARY_PATH
./configure CC=gcc CXX=g++ FC=gfortran F77=gfortran CFLAGS=-O3 CPPFLAGS=-O3 FFLAGS=-O3 FCFLAGS=-O3 \
            --prefix=/software/openmpi/3.1.5-gnu \
            --enable-static \
            --enable-debug --enable-memchecker --with-valgrind=/software/valgrind/3.15.0
make all
make install
