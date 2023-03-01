# EKartUI\_Setup
The purpose of these scripts are to provide a way to perform all of the
extensive dependency builds required for the EKartUI without the need for
constant user input, and to easily perform the startup procedure.

## File descriptions

EKartUI\_Setup/
├─ UI\_setup\_script.sh
├─ APD\_setup\_script.sh
├─ EKartUI\_debug
├─ README.md

###UI\_setup\_script.sh
    Performs all necessary dependency builds for the UI only, including basic
    build utilities, Python 3.6+, Qt 6.0+. CMake 3.18+, Git 2.0+, and libclang.
    Then it builds and installs several Qt submodules, PySide6, and starts UI.
    The resulting file structure should be made inside of /home/gokart/
/home/gokart/project/
├── EKartUI/
│   ├── can\_parse.py
│   ├── lib/
│   │   ├── APDView.py
│   │   ├── DashboardController.py
│   │   ├── \_\_pycache\_\_/
│   │   │   ├── APDView.cpython-39.pyc
│   │   │   ├── DashboardController.cpython-39.pyc
│   │   │   └── VideoThread.cpython-39.pyc
│   │   └── VideoThread.py
│   ├── LICENSE
│   ├── Main.py
│   ├── start\_ui.sh
│   └── ui/
│       ├── dashboard/
│       │   ├── BatteryPanel.qml
│       │   ├── ButtonPanel.qml
│       │   ├── CenterPanel.qml
│       │   ├── Dashboard.qml
│       │   ├── InfoPanel.qml
│       │   ├── RegenPanel.qml
│       │   ├── Speedometer.qml
│       │   └── Tachometer.qml
│       ├── fonts/
│       │   ├── fonts.txt
│       │   └── Royal\_Rumble\_Haettenschweiler.ttf
│       ├── images/
│       │   ├── arrow.png
│       │   ├── arrowselected.png
│       │   ├── batterypanel.png
│       │   ├── buttonpanel.png
│       │   ├── centerpanel.png
│       │   ├── CSU-Ram-Rev.png
│       │   ├── infopanel.png
│       │   ├── regenleft.png
│       │   ├── regennub.png
│       │   ├── regenpanel.png
│       │   ├── regenright.png
│       │   ├── tachometerpanel.png
│       │   └── team-logo.png
│       └── Main.qml
└── qsetup/
    ├── cbuild/
    │   └── source code and executibles
    ├── cmake-3.22.2/ 
    │   └── source code and executibles
    ├── pyside-setup/
    │   └── source code and executibles
    ├── qtbasebuild/
    │   └── source code and executibles
    ├── qtbase-everywhere-src-6.2.3/
    │   └── source code and executibles
    ├── qtdeclarative-everywhere-src-6.2.3/
    │   └── source code and executibles
    ├── qtshadertools-everywhere-src-6.2.3/
    │   └── source code and executibles
    ├── qttools-everywhere-src-6.2.3/
    │   └── source code and executibles
    ├── cmake-3.22.2.tar.gz 
    ├── qtbase-everywhere-src-6.2.3.tar.xz
    ├── qtdeclarative-everywhere-src-6.2.3.tar.xz
    ├── qtshadertools-everywhere-src-6.2.3.tar.xz
    └── qttools-everywhere-src-6.2.3.tar.xz



## Requirements
The script requires that your home directory path is /home/gokart/

