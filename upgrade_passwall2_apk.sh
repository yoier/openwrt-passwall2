#!/bin/sh
mkdir /tmp/upgrade_passwall2_apk
cd /tmp/upgrade_passwall2_apk
download_url=$(curl -s https://api.github.com/repos/yoier/openwrt-passwall2/releases/latest | grep '"browser_download_url":'| sed -E 's/.*"([^"]+)".*/\1/')
curl -L -O $(echo $download_url|awk '{print $1}')
curl -L -O $(echo $download_url|awk '{print $2}')
apk add /tmp/upgrade_passwall2_apk/*.apk --allow-untrusted
rm -rf /tmp/upgrade_passwall2_apk