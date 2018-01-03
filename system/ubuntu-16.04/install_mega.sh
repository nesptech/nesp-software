#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

sudo add-apt-repository -yu ppa:eugenesan/ppa
sudo apt-get update
sudo apt-get install -y megasync nautilus-megasync
sudo apt-get install -y nautilus
nautilus -q
#remove mega
#sudo apt-get remove megasync nautilus-megasync
