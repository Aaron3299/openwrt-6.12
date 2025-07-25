# 修改openwrt登陆地址,把下面的192.168.9.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate

#修改机器名称
sed -i 's/Openwrt/A18/g' package/base-files/files/bin/config_generate
#TYYD免登录
sed -i -r 's#/bin/login#/bin/login -f root#g' feeds/packages/utils/ttyd/files/ttyd.config

rm -rf feeds/luci/themes/luci-theme-argon
rm -rf package/emortal/themes/luci-theme-argon
rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led
