cd /packages
curl -o fftw-2.1.5.tar.gz http://www.fftw.org/fftw-2.1.5.tar.gz
tar zxvf fftw-2.1.5.tar.gz
rm -f fftw-2.1.5.tar.gz
cd fftw-2.1.5
export PATH=/software/gcc/9.3.0/bin:$PATH
export LD_LIBRARY_PATH=/software/gcc/9.3.0/lib64:/software/gcc/9.3.0/lib:$LD_LIBRARY_PATH
export FFTW_PATH=/software/fftw/2.1.5-gnu
export MPI_PATH=/software/openmpi/3.1.5-gnu
export CC=gcc
export F77=gfortran
export CFLAGS=-O3
export FFLAGS=-O3
export LDFLAGS=-L$MPI_PATH/lib
export CPPFLAGS=-I$MPI_PATH/include
./configure --enable-mpi --enable-type-prefix --prefix=$FFTW_PATH --enable-threads --enable-float
make
make install
cp fortran/fftw_f77.i $FFTW_PATH/include
