echo '\033[33m============安装 flyme patchrom tool=============\033[32m'
echo ''
sudo apt-get install repo
mkdir ~/flyme 
cd ~/flyme
repo init --repo-url git://github.com/FlymeOS/repo.git \
            -u https://github.com/FlymeOS/manifest.git \
            -b marshmallow-6.0 --no-repo-verify
repo sync --no-clone-bundle -c -j4
sudo chmod -R 777 ~/flyme
