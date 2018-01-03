echo '\033[33m===============安装 miui patchrom tool===========\033[32m'
echo ''
sudo apt-get install repo
mkdir ~/miui
cd ~/miui
repo init --repo-url git://github.com/FlymeOS/repo.git \
          -u https://github.com/MiCode/patchrom.git \
          -b marshmallow --no-repo-verify
repo sync --no-clone-bundle -c -j4
sudo chmod -R 777 ~/miui

