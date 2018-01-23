site="raw.githubusercontent.com/iswant/kijotole/master"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install libcurl4-openssl-dev git
sudo apt-get -y install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev
apt-get install make
git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo make install
wget $site/run.sh
echo "screen -d -r" >> /root/.bashrc
screen