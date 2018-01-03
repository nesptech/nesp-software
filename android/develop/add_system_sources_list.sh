#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp /etc/apt/sources.list ./
sudo chmod -R 777 ./sources.list
sudo cat files/system_sources_list >> ./sources.list
sudo cp ./sources.list /etc/apt/sources.list
sudo apt update
