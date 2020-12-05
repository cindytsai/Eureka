# This Dockerfile is to mock the environment on eureka.
FROM centos:7.7.1908

MAINTAINER cindytsai turquoisea.tsai@gmail.com

# Install packages
RUN ["mkdir", "/InstallScript"]
COPY /InstallScript /InstallScript
RUN ["cd", "/InstallScript"]
RUN ["/bin/bash", "/InstallScript/installation.sh"]

# Environment Variables
ENV PATH=/software/openmpi/3.1.5-gnu/bin:$PATH
ENV PATH=/software/valgrind/3.15.0/bin:$PATH
ENV PATH=/software/hdf5/1.10.6/bin:$PATH
ENV PATH=/software/gcc/9.3.0/bin:$PATH
ENV PATH=/work1/cindytsai/Software/python/python3.8/bin:$PATH

ENV LD_LIBRARY_PATH=/software/openmpi/3.1.5-gnu/lib:$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=/software/gsl/2.6/lib:$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=/software/hdf5/1.10.6/lib:$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=/work1/cindytsai/Project/libyt/lib:$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=/software/gcc/9.3.0/lib64:$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=/software/gcc/9.3.0/lib:$LD_LIBRARY_PATH
ENV LD_LIBRARY_PATH=/work1/cindytsai/Software/python/python3.8/lib:$LD_LIBRARY_PATH