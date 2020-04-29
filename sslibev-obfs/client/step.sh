#brew update
#brew install shadowsocks-libev
#brew install simple-obfs
sudo vi shadowsocks-libev.json
sudo cp shadowsocks-libev.json /usr/local/etc/shadowsocks-libev.json
sudo cp com.shadowsocks.plist /Library/LaunchDaemons/
sudo launchctl stop com.shadowsocks.plist
sudo launchctl start com.shadowsocks.plist
