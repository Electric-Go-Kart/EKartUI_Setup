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
