#!/bin/bash

    if which pip3 >/dev/null; then
        echo "Package 'pip3' is installed."
    else
        echo "Package 'pip3' is missing. Do you wish to install it?(y/n)"
        read answer
        if echo "$answer" | grep -iq "^y" ;then
            sudo apt install python3-pip
        else
            exit
        fi
    fi

    if [[ $(sudo pip3 -V | awk '{split($0,a," "); print a[2]}' | awk '{split($0,a,"."); print a[1]}') -lt 9 ]]; then
        echo "Package 'pip3' is outdated. Do you wish to upgrade it?(y/n)"
        read answer
        if echo "$answer" | grep -iq "^y" ;then
            sudo -H pip3 install --upgrade pip 2>/dev/null
        else
            exit
        fi
    fi

    if [[ $(pip3 list --format=columns | grep -F wheel) ]]; then
        echo "Package 'wheel' is installed."
    else
        echo "Package of pip3 called 'wheel' is missing. Do you wish to install it?(y/n)"
        read answer
        if echo "$answer" | grep -iq "^y" ;then
            sudo -H pip3 install wheel 2>/dev/null
        else
            exit
        fi
    fi

        
    if [ "$1" = "offline" ]; then
        sudo -H pip3 install $2 2>/dev/null
    else
        sudo -H pip3 install ivs-calculator 2>/dev/null
    fi

    echo "Installation was successful!"
