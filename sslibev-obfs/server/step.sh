apt install shadowsocks-libev
vi config.json
cp config.json /etc/shadowsocks-libev/config.json
apt-get install --no-install-recommends build-essential autoconf libtool libssl-dev libpcre3-dev libc-ares-dev libev-dev asciidoc xmlto automake git -y
git clone https://github.com/shadowsocks/simple-obfs.git
cd simple-obfs
git submodule update --init --recursive
./autogen.sh
./configure && make
make install
cd ..
rm -rf simple-obfs
cp ssserver.service /etc/systemd/system/ssserver.service
systemctl start ssserver
systemctl enable ssserver
