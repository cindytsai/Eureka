# Single Node Eureka on Calab-NTU
> Some of the settings may not be the most optimal way, since I'm newbies to "Docker".

## Content
* [Usage](https://github.com/cindytsai/Eureka#usage)
* [Tags](https://github.com/cindytsai/Eureka#tags)
  * [base](https://github.com/cindytsai/Eureka#base)
  * [python2.7](https://github.com/cindytsai/Eureka#python2.7)

## Usage
* Pull the image from *Docker Hub*.
```
docker pull cindytsai/eureka:<tag>
```
* Run your projects on it using `Dockerfile`.
```Dockerfile
FROM cindytsai/eureka:<tag>

COPY <HOST_DIR> <CONTAINER_DIR> 
```
* Some useful commands in [DockerRef.md](./DockerRef.md)

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
