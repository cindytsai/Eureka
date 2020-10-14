echo "      ~ Install Software ~"
echo "Create directory /software"
mkdir /software
echo "Create directory /packages, to temporary store software packages."
mkdir /packages
# 0. Install Development tools
yum -y group install "Development Tools"
# 1. Install Valgrind
echo "Installing Valgrind ..."
/bin/bash /InstallScript/Valgrind/install.sh
# 2. Install OpenMPI
echo "Installing OpenMPI ..."
/bin/bash /InstallScript/OpenMPI/install.sh
# 3. Install fftw
echo "Installing fftw ..."
#curl -o fftw-2.1.5.tar.gz http://www.fftw.org/fftw-2.1.5.tar.gz
#tar zxvf fftw-2.1.5.tar.gz
#cd fftw-2.1.5
#./configure --prefix=/software/fftw/default
