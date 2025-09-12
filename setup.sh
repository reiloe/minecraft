#!/bin/bash

confirm() {
    while true; do
        read -p "$1 (y/n): " -n 1 -r
        echo    # new line
        case $REPLY in
            [Yy] ) return 0;;
            [Nn] ) return 1;;
            * ) echo "Invalid key pressed.";;
        esac
    done
}

echo "You have to read, understood and agree the EULA"
echo "and have to follow when using the software."
echo "If you don't do this, the server will shut down immediately when you try to start it."
echo "You will find the EULA at https://www.minecraft.net/de-de/eula"

if confirm "Do you agree to the EULA?"; then
  echo eula=true > server/eula.txt
  docker build -t reiloe/minecraft:1.21.8 .
  docker compose up
else
    echo "Setup of Minecraft Server cancelled!!!"
fi