cd /packages
curl -o fftw-2.1.5.tar.gz http://www.fftw.org/fftw-2.1.5.tar.gz
tar zxvf fftw-2.1.5.tar.gz
rm fftw-2.1.5.tar.gz
cd fftw-2.1.5
./configure --prefix=/software/fftw/default