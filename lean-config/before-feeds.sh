#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: before-feeds.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# luci-app-adguardhome fix
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/Lienol/openwrt-packages/trunk/net/adguardhome	package/adguardhome
svn co https://github.com/Lienol/openwrt-packages/trunk/devel/packr package/packr

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
