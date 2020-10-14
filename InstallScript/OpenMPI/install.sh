cd /packages
curl -o openmpi-3.1.5.tar.gz http://download.open-mpi.org/release/open-mpi/v3.1/openmpi-3.1.5.tar.gz
tar zxvf openmpi-3.1.5.tar.gz
rm openmpi-3.1.5.tar.gz
cd openmpi-3.1.5
./configure CC=gcc CXX=g++ FC=gfortran F77=gfortran CFLAGS=-O3 CPPFLAGS=-O3 FFLAGS=-O3 FCFLAGS=-O3 \
            --prefix=/software/openmpi/3.1.5-gnu \
            --enable-static \
            --enable-debug --enable-memchecker --with-valgrind=/software/valgrind/3.15.0
make all
make install
