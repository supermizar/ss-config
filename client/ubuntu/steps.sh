#!/bin/bash
cp sslocal.service /etc/systemd/system/sslocal.service
cp client.json /etc/shadowsocks/client.json
systemctl start sslocal
systemctl enable sslocal
