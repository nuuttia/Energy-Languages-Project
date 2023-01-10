#JRuby 9.1.7.0
curl https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.1.7.0/jruby-dist-9.1.7.0-bin.tar.gz --output jruby.tar.gz
sudo tar -xf jruby.tar.gz -C /usr/local/
rm jruby.tar.gz

#Ruby 2.7.0-preview1 was incompatible with current openssl version. Therefore, we used the current version available in the package manager dnf (ruby-3.1.3)
# Also install ruby-dev package
#INstalling ruby gmp module
gem install gmp

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

#Perl installing libraries
cpan Math::GMP

#Lua
#Make sure you have the package libreadline-dev installed
#This will replace 
wget https://www.lua.org/ftp/lua-5.3.3.tar.gz
tar -xf lua-5.3.3.tar.gz 
rm lua-5.3.3.tar.gz
make local
make install INSTALL_TOP=~/lua_local/
cd ..
rm -rf lua-5.3.3

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
wget https://downloads.haskell.org/~ghc/8.8.1/ghc-8.8.1-x86_64-fedora27-linux.tar.xz
sudo tar -xf ghc-8.8.1-x86_64-fedora27-linux.tar.xz
rm ghc-8.8.1-x86_64-fedora27-linux.tar.xz
cd ghc-8.8.1-x86_64-fedora27-linux
./configure --prefix=/usr/local/
sudo make install
cd ..
rm -rf ghc-8.8.1-x86_64-fedora27-linux

## Install LLVM11 and CLANG using your packet manager

# Pascal 3.0.2
wget https://sourceforge.net/projects/freepascal/files/Linux/3.2.2/fpc-3.2.2.x86_64-linux.tar
tar -xf fpc-3.2.2.x86_64-linux.tar
rm fpc-3.2.2.x86_64-linux.tar
cd fpc-3.2.2.x86_64-linux
sudo ./install.sh
cd ..
rm -rf fpc-3.2.2.x86_64-linux/