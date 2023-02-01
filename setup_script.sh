# Beginning setup
# update and upgrade
sudo apt update && sudo apt upgrade -y
# set project floder
cd ~ && mkdir projects && cd projects
# Install pipenv
sudo -H pip install pipenv

# UI setup
# prerequisite: Python 3.6+, Qt 6.0+, CMake 3.18+, Git 2.0+, and libclang
# Install libclang
sudo apt install libclang-dev
# Install Qt 6.2.3
cd ~/projects/qtsetup
sudo apt update
sudo apt install libclang-dev
sudo apt install build-essential
wget https://github.com/Kitware/CMake/releases/download/v3.22.2/cmake-3.22.2.tar.gz
tar xf cmake-3.22.2.tar.gz
mkdir cbuild && cd cbuild
../cmake-3.22.2/bootstrap --prefix=/opt/cmake --parallel=4 && make -j4 && sudo make install
sudo apt install ninja-build libfontconfig1-dev libdbus-1-dev libfreetype6-dev libicu-dev libinput-dev libxkbcommon-dev libsqlite3-dev libssl-dev libpng-dev libjpeg-dev libglib2.0-dev
sudo apt install libgles2-mesa-dev libgbm-dev libdrm-dev
sudo apt install libx11-dev libxcb1-dev libxext-dev libxi-dev libxcomposite-dev libxcursor-dev libxtst-dev libxrandr-dev libx11-xcb-dev libxext-dev libxfixes-dev libxi-dev libxrender-dev libxcb1-dev libxcb-glx0-dev libxcb-keysyms1-dev libxcb-image0-dev libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-xinput-dev
sudo apt remove libzstd-dev
cd ~/projects/qtsetup
wget https://download.qt.io/official_releases/qt/6.2/6.2.3/submodules/qtbase-everywhere-src-6.2.3.tar.xz
tar xf qtbase-everywhere-src-6.2.3.tar.xz
mkdir qtbasebuild && cd qtbasebuild
/opt/cmake/bin/cmake -G Ninja -DCMAKE_INSTALL_PREFIX=/opt/Qt/6.2.3-aarch64 -DQT_AVOID_CMAKE_ARCHIVING_API=ON ../qtbase-everywhere-src-6.2.3
/opt/cmake/bin/cmake --build . --parallel 4
sudo /opt/cmake/bin/cmake --install .
