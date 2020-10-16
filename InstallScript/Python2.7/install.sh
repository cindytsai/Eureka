# Prerequsite packages for python and pip
cd /packages
git clone https://github.com/madler/zlib.git 
cd zlib
./configure --prefix=/usr/local
make
make install
cd /packages
yum -y install openssl-devel openssl
# For Python2.7.18
cd /packages
curl -o Python-2.7.18.tgz https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
tar zxvf Python-2.7.18.tgz
rm -f Python-2.7.18.tgz
cd Python-2.7.18
./configure --prefix=/work1/cindytsai/Software/python/python2.7 --enable-shared --enable-ipv6 LDFLAGS=-Wl,-rpath=/work1/cindytsai/Software/python/python2.7/lib,--disable-new-dtags
make
make install