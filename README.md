# NdnLive
NdnLive in ns3

#Notice

#You need to install boost library

wget http://downloads.sourceforge.net/project/boost/boost/1.62.0/boost_1_62_0.tar.bz2

tar jxf boost_1_62_0.tar.bz2
 
 cd boost_1_62_0
 
 ./bootstrap.sh
 
 sudo ./b2 --prefix=/usr/local install
 
#configure the ns3 with the following commands


./waf configure --boost-includes=/usr/local/include --boost-libs=/usr/local/lib --enable-examples

./waf
 
#you need to add the env variable in ~/.bashrc
 
 export LD_LIBRARY_PATH=/usr/local/lib

after that you can run a example for test.
