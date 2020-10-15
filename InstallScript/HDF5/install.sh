cd /packages
curl -o hdf5-1.10.6.tar.gz https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.10/hdf5-1.10.6/src/hdf5-1.10.6.tar.gz
tar zxvf hdf5-1.10.6.tar.gz
rm -f hdf5-1.10.6.tar.gz
cd hdf5-1.10.6
export CC=gcc
./configure --prefix=/software/hdf5/1.10.6 --enable-fortran
make
make check
make install
make check-install