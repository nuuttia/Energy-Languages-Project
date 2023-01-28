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

#JRuby 9.1.7.0
curl https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.1.7.0/jruby-dist-9.1.7.0-bin.tar.gz --output jruby.tar.gz
sudo tar -xf jruby.tar.gz -C /usr/local/
rm jruby.tar.gz

#Ruby 2.7.0-preview1 was incompatible with current openssl version. Therefore, we used the current version available in the package manager dnf (ruby-3.1.3)
# Also install ruby-dev package using your OS packet manager
#INstalling ruby gmp module
#gem install gmp

#Php 1.7.4.
curl https://www.php.net/distributions/php-7.1.4.tar.gz --output php.tar.gz
tar -xf php.tar.gz
rm php.tar.gz
cd php-7.1.4/
./configure --enable-sysvmsg --enable-shmop --with-gmp --enable-pcntl
make
sudo make install
cd ..
rm -rf php-7.1.4/

#Perl installing libraries on Normal User
cpan Math::GMP

#Perl installing libraries on root User
sudo cpan install Math::GMP

#Lua 5.3.3
#Make sure you have the package libreadline-dev installed
#This will replace 
wget https://www.lua.org/ftp/lua-5.3.3.tar.gz
tar -xf lua-5.3.3.tar.gz 
rm lua-5.3.3.tar.gz
sudo make install INSTALL_TOP=/usr/lua_local/
cd ..
sudo rm -rf lua-5.3.3

#Lua 5.4.4
wget https://www.lua.org/ftp/lua-5.4.4.tar.gz
tar -xf lua-5.4.4.tar.gz 
rm lua-5.4.4.tar.gz
sudo make install INSTALL_TOP=/usr/lua-5.4.4/
cd ..
sudo rm -rf lua-5.4.4

#Installing c-gmp lua module 
# Requires LuaRocks package manager
wget https://luarocks.org/releases/luarocks-3.9.2.tar.gz
tar -xf luarocks-3.9.2.tar.gz
rm luarocks-3.9.2.tar.gz
cd luarocks-3.9.2
./configure
make
sudo make install
cd ..
rm -r luarocks-3.9.2
sudo luarocks install c-gmp

#Installing c++ boost library
wget https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.gz
sudo tar -xf boost_1_81_0.tar.gz -C /usr/local
rm boost_1_81_0.tar.gz

# Java library fastutil (must have ant installed)
cd Java/k-nucleotide
git clone https://github.com/vigna/fastutil.git
cd fastutil
make sources
ant jar
cd ../../..

#Haskell 8.8.1 for Fedora
wget https://downloads.haskell.org/ghc/8.8.1/ghc-8.8.1-x86_64-fedora27-linux.tar.xz
tar -xf ghc-8.8.1-x86_64-fedora27-linux.tar.xz
rm ghc-8.8.1-x86_64-fedora27-linux.tar.xz
cd ghc-8.8.1-x86_64-fedora27-linux
sudo ./configure --prefix=/usr/local/ghc/
sudo make install
cd ..
sudo rm -rf ghc-8.8.1-x86_64-fedora27-linux

## Install LLVM11 and CLANG using your packet manager

# Pascal 3.0.2
wget https://sourceforge.net/projects/freepascal/files/Linux/3.2.2/fpc-3.2.2.x86_64-linux.tar
tar -xf fpc-3.2.2.x86_64-linux.tar
rm fpc-3.2.2.x86_64-linux.tar
cd fpc-3.2.2.x86_64-linux
sudo ./install.sh
cd ..
rm -rf fpc-3.2.2.x86_64-linux/

# Typescript libraries
npm install babel-cli
npm install @types/node@latest
npm i babel-plugin-transform-es2015-modules-commonjs

#Dart 1.24.0-dev.0.0
wget https://storage.googleapis.com/dart-archive/channels/dev/release/1.24.0-dev.0.0/sdk/dartsdk-linux-x64-release.zip
sudo unzip dartsdk-linux-x64-release.zip -d /usr/local/
rm dartsdk-linux-x64-release.zip

#Dart args module 
sudo /usr/local/dart pub add args


#gcc 6.2.0
#wget https://ftp.gnu.org/gnu/gcc/gcc-6.2.0/gcc-6.2.0.tar.gz
#tar -xf gcc-6.2.0.tar.gz
#rm gcc-6.2.0.tar.gz
#cd gcc-6.2.0/
#./contrib/download_prerequisites
#./configure -disable-multilib --enable-languages=c,c++ --prefix=/usr/local/old_gcc
#make

#Dart 2.18.0
wget https://storage.googleapis.com/dart-archive/channels/stable/release/2.18.0/sdk/dartsdk-linux-x64-release.zip
sudo unzip dartsdk-linux-x64-release.zip -d /usr/local/new_dart_sdk/
rm dartsdk-linux-x64-release.zip

#Node 7.9.0
wget https://nodejs.org/dist/v7.9.0/node-v7.9.0-linux-x86.tar.gz
sudo tar -xf node-v7.9.0-linux-x86.tar.gz -C /usr/local/
rm node-v7.9.0-linux-x86.tar.gz

#Python 3.5.2
wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz
tar -xf Python-3.5.2.tgz
rm Python-3.5.2.tgz
cd Python-3.5.2/
./configure --prefix=/usr/local/old_python/
make 
sudo make install
cd ..
sudo rm -rf Python-3.5.2/

#dotnet 3.1.0
wget https://download.visualstudio.microsoft.com/download/pr/d731f991-8e68-4c7c-8ea0-fad5605b077a/49497b5420eecbd905158d86d738af64/dotnet-sdk-3.1.100-linux-x64.tar.gz
sudo mkdir -p /usr/local/dotnet && tar zxf dotnet-sdk-3.1.100-linux-x64.tar.gz -C /usr/local/dotnet
rm dotnet-sdk-3.1.100-linux-x64.tar.gz

#JRuby 9.4.0
wget https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.4.0.0/jruby-dist-9.4.0.0-bin.tar.gz
sudo tar -xf jruby-dist-9.4.0.0-bin.tar.gz -C /usr/local/
rm jruby-dist-9.4.0.0-bin.tar.gz

#PHP 8.2.1 -> MAKE SURE sqlite-devel package is installed in your computer
wget https://www.php.net/distributions/php-8.2.1.tar.gz
tar -xf php-8.2.1.tar.gz
rm php-8.2.1.tar.gz
cd php-8.2.1/
./configure --enable-sysvmsg --enable-shmop --with-gmp --enable-pcntl --prefix=/usr/local/php-8.2.1
make
sudo make install
cd ..
sudo rm -rf php-8.2.1/

#Dotnet 6.0.404
wget https://download.visualstudio.microsoft.com/download/pr/40bc5873-1a39-4a47-9df5-b481869594a6/8455eab2092cc1321ac055f016ef90cf/dotnet-sdk-6.0.404-linux-x64.tar.gz
sudo mkdir /usr/local/dotnet-6.0.404
tar -xf  dotnet-sdk-6.0.404-linux-x64.tar.gz -C /usr/local/dotnet-6.0.404
rm dotnet-sdk-6.0.404-linux-x64.tar.gz