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
/bin/bash /InstallScript/fftw/install.sh


# Setup .bashrc file at /home

# Remove unneeded packages