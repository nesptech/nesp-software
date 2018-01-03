echo '\033[33m================安装 deb软件包====================\033[32m'
echo ''
cd deepin-deb
file=`ls`
for f in $file; do
files="$f"
if [ "${files##*.}" = "deb" ];then
    echo "\033[34m===========正在安装 ${files%.*}.......=========\033[32m"
    echo "\033[34m===========后缀名: ${files##*.}============\033[32m"
    #do some thing here
    sudo dpkg -f $files;  
    sudo apt install debhelper
elif [ "${files##*.}" = "xz" ];then
    echo "\033[34m===========正在安装 ${files%.*}。。。。。=========\033[32m"
    echo "\033[34m===========后缀名: ${files##*.}============\033[32m"
    #do some thing here
    sudo tar -xvf $files -C ~/;  
fi
done
sudo apt autoremove
