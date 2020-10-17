# Get pip for python2.7
cd /packages
curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py
/work1/cindytsai/Software/python/python2.7/bin/python get-pip.py
# Install packages for python using pip
cd /work1/cindytsai/Software/python/python2.7/bin
./pip install numpy cython jupyter scipy astropy