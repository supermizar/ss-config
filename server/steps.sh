#!/bin/bash
apt update
apt install python-pip -y
pip install setuptools
pip install shadowsocks
sed -i 's/cleanup/reset/g' /usr/local/lib/python2.7/dist-packages/shadowsocks/crypto/openssl.py
cp ssserver.service /etc/systemd/system/ssserver.service
cp server.json /etc/shadowsocks/server.json
systemctl start ssserver
systemctl enable ssserver
