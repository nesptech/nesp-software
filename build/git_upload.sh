#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

read -p "是否需要链接远程仓库？[y/n]     " linkrepo
if [ "$linkrepo" = "y" ];then
	read -p "请输入远程仓库地址  " remoterepo
	git remote rm origin
	git remote add origin $remoterepo
fi
read -p "是否需要追踪全部文件？[y/n]     " linkrepo
if [ "$linkrepo" = "y" ];then
	git add --all
fi
read -p "请输入提交信息：  " message
git commit -am "$message"
read -p "请输入分支名称：  " branch
git push -u origin $branch

