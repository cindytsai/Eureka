# Notes on the docker image

## Tags
### `base`
* **Packages**

| Packages | Version |          Directory          | Notes |
|:--------:|:-------:|:---------------------------:|:-----:|
| Valgrind |  3.15.0 | /software/valgrind/3.15.0   |       |
|  OpenMPI |  3.1.5  | /software/openmpi/3.1.5-gnu |       |
|   FFTW   |  2.1.5  | /software/fftw/2.1.5-gnu    |       |
|   HDF5   |  1.10.6 | /software/hdf5/1.10.6       |       |
|    GSL   |   2.6   | /software/gsl/2.6           |       |

* **Environment Variable**
```shell
LD_LIBRARY_PATH=/software/openmpi/3.1.5-gnu/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/software/gsl/2.6/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/software/hdf5/1.10.6/lib:$LD_LIBRARY_PATH

PATH=/software/openmpi/3.1.5-gnu/bin:$PATH
PATH=/software/valgrind/3.15.0/bin:$PATH
PATH=/software/hdf5/1.10.6/bin:$PATH

export LD_LIBRARY_PATH
export PATH
```

### `python2.7`
* **Packages**

| Packages | Version |                  Directory                 | Notes |
|:--------:|:-------:|:------------------------------------------:|:-----:|
| Valgrind |  3.15.0 | /software/valgrind/3.15.0                  |       |
|  OpenMPI |  3.1.5  | /software/openmpi/3.1.5-gnu                |       |
|   FFTW   |  2.1.5  | /software/fftw/2.1.5-gnu                   |       |
|   HDF5   |  1.10.6 | /software/hdf5/1.10.6                      |       |
|    GSL   |   2.6   | /software/gsl/2.6                          |       |
| Python   | 2.7.18  | /work1/cindytsai/Software/python/python2.7 |       |

* **Environment Variable**
```shell
LD_LIBRARY_PATH=/software/openmpi/3.1.5-gnu/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/software/gsl/2.6/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/software/hdf5/1.10.6/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/work1/cindytsai/Project/libyt/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/work1/cindytsai/Software/python/python2.7/lib:$LD_LIBRARY_PATH

PATH=/software/openmpi/3.1.5-gnu/bin:$PATH
PATH=/software/valgrind/3.15.0/bin:$PATH
PATH=/work1/cindytsai/Software/python/python2.7/bin:$PATH
PATH=/software/hdf5/1.10.6/bin:$PATH

export LD_LIBRARY_PATH
export PATH
```

## Software and Packages
* Temporary packages are under `/packages`.

### Valgrind
* Version : **3.15.0**
* Path : `/software/valgrind/3.15.0`
* Notes :
  * [webpage](https://sourceware.org/git/?p=valgrind.git)
  * Source `src` not linked to `valgrind` package.
  * No `default` directory.

### OpenMPI
* Version : **3.1.5**
* Path : `/software/openmpi/3.1.5-gnu`
* Notes : 
  * Source `src` not linked to `openmpi` package.
  * No `default` directory.

### FFTW
* Version : **2.1.5**
* Path : `/software/fftw/2.1.5-gnu`
* Notes : 
  * Source `src` not linked to `fftw` package.
  * No `default` directory.

### HDF5
* Version : **1.10.6**
* Path : `/software/hdf5/1.10.6`
* Notes : 
  * Source `src` not linked to `hdf5` package.
  * No `default` directory.

### GSL
* Version : **2.6**
* Path : `/software/gsl/2.6`
* Notes : 
  * Source `src` not linked to `gsl` package.
  * No `default` directory.

### Python
* Version : **2.7.18**
* Path : `/work1/cindytsai/Software/python/python2.7`
* Notes :
  * Install pip and python packages are in different shell script.