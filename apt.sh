#!/bin/bash
perl -p -i.bak -e 's%(deb(?:-src|)\s+)https?://(?!archive\.canonical\.com|security\.ubuntu\.com)[^\s]+%$1http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%' /etc/apt/sources.list
apt update
