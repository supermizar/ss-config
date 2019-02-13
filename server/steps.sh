#!/bin/bash
cp ssserver.service /etc/systemd/system/ssserver.service
cp server.json /etc/shadowsocks/server.json
systemctl start ssserver
systemctl enable ssserver
