#!/bin/bash

# 设置密码
sudo passwd root
sudo su

# 修改ssh配置支持root登录 PermissionRootLogin yes PasswordAuthentication yes
vi /etc/ssh/sshd_config

apt install wget
apt install iptables-services

apt install epel-release

# 安装nginx主要是为了测试防火墙是否关了
apt install nginx

cd ~

# https://guide.v2fly.org/prep/install.html#%E5%AE%89%E8%A3%85%E4%BE%9D%E8%B5%96%E8%BD%AF%E4%BB%B6

curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh

bash install-release.sh

# 配置cf warp

# 先按照这个网页提示下载warp所需包https://pkg.cloudflareclient.com/install

apt install cloudflare-warp
warp-cli register
warp-cli set-mode proxy
warp-cli connect
warp-cli enable-always-on


vi /usr/local/etc/v2ray/config.json
# 配置v2ray config.json

systemctl start v2ray

systemctl enable v2ray

