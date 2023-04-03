#!/bin/bash

if [ "`whoami`" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

timedatectl set-timezone "Asia/Tokyo"
perl -p -i.bak -e 's%(deb(?:-src|)\s+)https?://(?!archive\.canonical\.com|security\.ubuntu\.com)[^\s]+%$1http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%' /etc/apt/sources.list
apt update
apt upgrade -y
apt install -y net-tools screen
