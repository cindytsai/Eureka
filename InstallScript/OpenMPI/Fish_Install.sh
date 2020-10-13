
make clean

# gnu
#./configure CC=gcc CXX=g++ FC=gfortran F77=gfortran CFLAGS=-O3 CPPFLAGS=-O3 FFLAGS=-O3 FCFLAGS=-O3 \
#            --prefix=/software/openmpi/3.1.5-gnu \
#            --enable-static \
#            --with-tm=/usr/local/torque \
#            --enable-debug --enable-memchecker --with-valgrind=/software/valgrind/default

# intel
./configure CC=icc CXX=icpc FC=ifort F77=ifort CFLAGS=-O3 CPPFLAGS=-O3 FFLAGS=-O3 FCFLAGS=-O3 \
            --prefix=/software/openmpi/3.1.5-intel \
            --enable-static \
            --with-tm=/usr/local/torque \
            --enable-debug --enable-memchecker --with-valgrind=/software/valgrind/default
           
make -j 16 all
make install

