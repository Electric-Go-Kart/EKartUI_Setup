# Beginning setup
read -p "Do you want to update and upgrade?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt update && sudo apt upgrade -y
else
    echo "No update and upgrade"
fi

read -p "Do you want to make project directory?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~ && mkdir projects
else
    echo "No project directory was made"
fi

read -p "Do you want to change directory to project?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~/projects
else
    echo "You might not be in project directory"
fi

read -p "Do you want to install pipenv?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo -H pip install pipenv
else
    echo "pipenv not installed"
fi

read -p "Do you want to install libclang?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt install libclang-dev
else
    echo "libclang not installed"
fi

read -p "Do you want to make qtsetup directory?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~/projects && mkdir qtsetup
else
    echo "You mignt not be in qtsetup directory"
fi

read -p "Do you want to change directory to qtsetup?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~/projects/qtsetup
else
    echo "You might not be in qtsetup directory"
fi

read -p "Do you want to update?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt update -y
else
    echo "No update"
fi

read -p "Do you want to install libclang-dev?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt install libclang-dev
else
    echo "libclang-dev not installed"
fi

read -p "Do you want to install build-essential?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt install build-essential
else
    echo "build-essential not installed"
fi

read -p "Do you want to build and install cmake from sources?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    wget https://github.com/Kitware/CMake/releases/download/v3.22.2/cmake-3.22.2.tar.gz
    tar xf cmake-3.22.2.tar.gz
    cd ~/projects/qtsetup
    mkdir cbuild && cd cbuild
    ../cmake-3.22.2/bootstrap --prefix=/opt/cmake --parallel=4 && make -j4 && sudo make install
else
    echo "cmake was not built and installed"
fi

read -p "Do you want to install ninja-build?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt install ninja-build libfontconfig1-dev libdbus-1-dev libfreetype6-dev libicu-dev libinput-dev libxkbcommon-dev libsqlite3-dev libssl-dev libpng-dev libjpeg-dev libglib2.0-dev
else
    echo "ninja-build not installed"
fi

read -p "Do you want to install libgles2?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt install libgles2-mesa-dev libgbm-dev libdrm-dev
else
    echo "libgles2 not installed"
fi

read -p "Do you want to install libx11?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt install libx11-dev libxcb1-dev libxext-dev libxi-dev libxcomposite-dev libxcursor-dev libxtst-dev libxrandr-dev libx11-xcb-dev libxext-dev libxfixes-dev libxi-dev libxrender-dev libxcb1-dev libxcb-glx0-dev libxcb-keysyms1-dev libxcb-image0-dev libxcb-shm0-dev libxcb-icccm4-dev libxcb-sync-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-xinput-dev
else
    echo "libx11 not installed"
fi

read -p "Do you want to remove libzstd?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo apt remove libzstd-dev
else
    echo "libzstd not removed"
    echo "System version might causes issues. It needs to be removed"
fi

read -p "Do you want to change directory to qtsetup?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~/projects/qtsetup
else
    echo "You might not be in qtsetup directory"
fi

read -p "Do you want to install Qt6.2 base sources?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    wget https://download.qt.io/official_releases/qt/6.2/6.2.4/submodules/qtbase-everywhere-src-6.2.4.tar.xz
else
    echo "Qt6.2 base sources not installed"
fi

read -p "Do you want to extract Qt6.2 sources?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    tar xf qtbase-everywhere-src-6.2.3.tar.xz
else
    echo "Qt6.2 sources not extracted"
fi

read -p "Do you want to make a build directory for Qt6.2?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~/projects/qtsetup
    mkdir qtbasebuild && cd qtbasebuild
else
    echo "build directory not made for Qt6.2"
fi

read -p "Do you want to change directory to build directory for Qt6.2?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    cd ~/projects/qtsetup/qtbasebuild
else
    echo "You might not be in build directory for Qt6.2"
fi

read -p "Do you want to configure the Qt6.2 build?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    /opt/cmake/bin/cmake -G Ninja -DCMAKE_INSTALL_PREFIX=/opt/Qt/6.2.3-aarch64 -DQT_AVOID_CMAKE_ARCHIVING_API=ON ../qtbase-everywhere-src-6.2.3
else
    echo "Configuration for Qt6.2 not run"
fi

read -p "Do you want to build the Qt6.2 base?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    /opt/cmake/bin/cmake --build . --parallel 4
else
    echo "Qt6.2 base not built"
fi

read -p "Do you want to install the Qt6.2 base?" ans
if [[ $ans == "y" || $ans =="Y" ]]; then
    sudo /opt/cmake/bin/cmake --install .
else
    echo "Qt6.2 not installed"
fi
