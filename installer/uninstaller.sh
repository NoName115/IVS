#!/bin/bash

echo "Do you really wish to uninstall ivs-calculator?(y/n)"
read answer
if echo "$answer" | grep -iq "^y" ;then
    if sudo -H pip3 uninstall ivs-calculator <<< "y" > /dev/null 2>&1 ;then
        echo "Calulator was successfully uninstalled!"
    else
        echo "Calculator was not installed!"
    fi
else
    exit
fi

if [ "$1" = "all" ];then
    if sudo -H pip3 uninstall wheel <<< "y" > /dev/null 2>&1 ;then
        echo "Package wheel was successfully uninstalled!"
    else
        echo "Package wheel was not installed!"
    fi
    if sudo -H pip3 uninstall numpy <<< "y" > /dev/null 2>&1 ;then
        echo "Package numpy was successfully uninstalled!"
    else
        echo "Package numpy was not installed!"
    fi
    if sudo -H pip3 uninstall PyQt5 <<< "y" > /dev/null 2>&1 ;then
        echo "Package PyQt5 was successfully uninstalled!"
    else
        echo "Package PyQt5 was not installed!"
    fi
    exit
fi

echo "Do you wish to uninstall pip module wheel?(y/n)"
read answer
if echo "$answer" | grep -iq "^y" ;then
    if sudo -H pip3 uninstall wheel <<< "y" > /dev/null 2>&1 ;then
        echo "Package wheel was successfully uninstalled!"
    else
        echo "Package wheel was not installed!"
    fi
fi

echo "Do you wish to uninstall pip module numpy?(y/n)"
read answer
if echo "$answer" | grep -iq "^y" ;then
    if sudo -H pip3 uninstall numpy <<< "y" > /dev/null 2>&1 ;then
        echo "Package numpy was successfully uninstalled!"
    else
        echo "Package numpy was not installed!"
    fi
fi

echo "Do you wish to uninstall pip module PyQt5?(y/n)"
read answer
if echo "$answer" | grep -iq "^y" ;then
    if sudo -H pip3 uninstall PyQt5 <<< "y" > /dev/null 2>&1 ;then
        echo "Package PyQt5 was successfully uninstalled!"
    else
        echo "Package PyQt5 was not installed!"
    fi
fi
