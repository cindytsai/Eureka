# installation.sh is now at "/".
echo "      ~ Install Software ~"
echo "Create directory /software"
mkdir /software
cd software
echo "Downloading fftw-2.1.5-intel ..."
curl -o fftw-2.1.5.tar.gz http://www.fftw.org/fftw-2.1.5.tar.gz
