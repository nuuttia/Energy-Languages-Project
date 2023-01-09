# Downloading & Installing htslib.
git clone https://github.com/samtools/htslib.git
cd htslib/
git submodule update --init --recursive
autoreconf -i
./configure
make
sudo make install
cd ..
rm -rf htslib

#APR library
curl https://dlcdn.apache.org//apr/apr-1.7.0.tar.gz --output apr.tar.gz
tar -xf apr.tar.gz
rm apr.tar.gz
cd apr
./configure
make
sudo make install
cd ..
rm -rf apr