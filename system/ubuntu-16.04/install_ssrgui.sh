#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

sudo add-apt-repository -yu ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install -y shadowsocks-qt5
