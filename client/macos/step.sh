sudo cp com.shadowsocks.plist /Library/LaunchDaemons/
sudo cp client.json /etc/
sudo launchctl stop com.shadowsocks.plist
sudo launchctl start com.shadowsocks.plist
