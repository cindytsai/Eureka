

# ***********************************************
# remember to set PATH to the target MPI compiler
# ***********************************************

# gnu
#export FFTW_PATH=/software/math/fftw/2.1.5-gcc-qlc
#export MPI_PATH=/usr/mpi/gcc/openmpi-1.4.3-qlc
#export CC=gcc
#export F77=gfortran

#export FFTW_PATH=/software/math/fftw/2.1.5-intel
#export MPI_PATH=/software/mpi/openmpi/1.6.0-intel
#export CC=icc
#export F77=ifort


# intel
export FFTW_PATH=/software/fftw/2.1.5-intel
export MPI_PATH=/software/openmpi/3.1.5-intel
export CC=icc
export F77=ifort

export CFLAGS=-O3
export FFLAGS=-O3
export LDFLAGS=-L$MPI_PATH/lib
export CPPFLAGS=-I$MPI_PATH/include


make clean
./configure --enable-mpi --enable-type-prefix --prefix $FFTW_PATH --enable-threads --enable-float
make -j 16
make install

make clean
./configure --enable-mpi --enable-type-prefix --prefix $FFTW_PATH --enable-threads
make -j 16 
make install

cp fortran/fftw_f77.i $FFTW_PATH/include
