# Install packages for python using pip
cd /work1/cindytsai/Software/python/python2.7/bin
./pip install numpy cython jupyter scipy astropy
HDF5_DIR=/software/hdf5/1.10.6 ./pip install --no-binary=h5py h5py
LD_LIBRARY_PATH=/software/openmpi/3.1.5-gnu/lib:$LD_LIBRARY_PATH
PATH=/software/openmpi/3.1.5-gnu/bin:$PATH
./pip install mpi4py