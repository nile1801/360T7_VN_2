#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i "s/UTC/Asia/Ho_Chi_Minh/" package/base-files/files/bin/config_generate
sed -i 's/time1.apple.com/0.asia.pool.ntp.org/g'  package/base-files/files/bin/config_generate
sed -i 's/time1.google.com/1.asia.pool.ntp.org/g'  package/base-files/files/bin/config_generate
sed -i 's/time.cloudflare.com/2.asia.pool.ntp.org/g'  package/base-files/files/bin/config_generate
sed -i 's/pool.ntp.org/3.asia.pool.ntp.org/g'  package/base-files/files/bin/config_generate
sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='OpenWrt By NILE $(date +"%Y%m%d")'/g" package/base-files/files/etc/openwrt_release
