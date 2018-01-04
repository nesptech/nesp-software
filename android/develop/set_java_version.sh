#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

sudo update-alternatives --config jar
sudo update-alternatives --config java
sudo update-alternatives --config javac
sudo update-alternatives --config javap
sudo update-alternatives --config javadoc
