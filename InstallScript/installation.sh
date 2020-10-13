# installation.sh is now at "/".
echo "      ~ Install Software ~"
echo "Create directory /software"
mkdir /software
echo "Create directory /packages, to temporary store software packages."
mkdir /packages
cd /packages
# Now, the terminal is at /packages
# 0. Install Development tools
yum -y group install "Development Tools"
# 1. Install Valgrind

# 2. Install OpenMPI
#echo "Installing OpenMPI-3.1.5-intel"
#curl -o openmpi-3.1.5.tar.gz http://download.open-mpi.org/release/open-mpi/v3.1/openmpi-3.1.5.tar.gz
#tar zxvf openmpi-3.1.5.tar.gz
#rm openmpi-3.1.5.tar.gz
#cd openmpi-3.1.5
#./configure --prefix=/software/openmpi/default
#sudo make
#sudo make install
# . Install fftw
#echo "Installing fftw-2.1.5-intel ..."
#curl -o fftw-2.1.5.tar.gz http://www.fftw.org/fftw-2.1.5.tar.gz
#tar zxvf fftw-2.1.5.tar.gz
#cd fftw-2.1.5
#./configure --prefix=/software/fftw/default
