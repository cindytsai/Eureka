# Prerequsite packages for python and pip
# For zlib , openssl, and libffi-devel
cd /packages
git clone https://github.com/madler/zlib.git 
cd zlib
./configure --prefix=/usr/local
make
make install
cd /packages
yum -y install openssl-devel openssl
yum -y install libffi-devel
# For Python3.8.6
cd /packages
curl -o Python-3.8.6.tgz https://www.python.org/ftp/python/3.8.6/Python-3.8.6.tgz
tar zxvf Python-3.8.6.tgz
rm -f Python-3.8.6.tgz
cd Python-3.8.6
./configure --prefix=/work1/cindytsai/Software/python/python3.8 --enable-shared --enable-ipv6 LDFLAGS=-Wl,-rpath=/work1/cindytsai/Software/python/python3.8/lib,--disable-new-dtags --enable-optimizations
make
make install
# Get pip for python3.8
cd /packages
curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py
/work1/cindytsai/Software/python/python3.8/bin/python3.8 get-pip.py
