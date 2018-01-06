#!/bin/bash
LOCAL_PATH=$(cd `dirname $0`; pwd)
cd $LOCAL_PATH

#LINK REMOTE REPOSITORY
read -p "是否需要链接远程仓库？[y/n][n]     " linkrepo
if [ "$linkrepo" = "y" ];then
	read -p "请输入远程仓库地址  " remoterepo
	git remote rm origin
	git remote add origin $remoterepo
fi

#ADD LARGE FILES
read -p "是否需要添加大文件？[y/n][n]     " lfs
if [ "$lfs" = "y" ];then
	git lfs install
	read -p "请输入要上传的大文件或目录: " largefiles
	git lfs track $largefiles
	git add --all
fi

#ADD IGNORE FILES
read -p "是否需要添加忽略文件？[y/n][n]     " lfs
if [ "$lfs" = "y" ];then
	gedit .gitignore
fi


#TRACK ALL FILES
read -p "是否需要追踪全部文件？[y/n][n]     " linkrepo
if [ "$linkrepo" = "y" ];then
	git add --all
fi

#ADD COMMIT MESSAGA 
read -p "请输入提交信息：  " message
git commit -am "$message"
read -p "请输入分支名称：  " branch
git push -u origin $branch

