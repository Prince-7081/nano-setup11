#!/data/data/com.termux/files/usr/bin/bash

G="\033[1;32m"
R="\033[1;31m"
Y="\033[1;33m"
C="\033[1;36m"
N="\033[0m"

clear

echo -e "${C}"
echo "========================================"
echo "        PRINCE-7081"
echo "      Nano Setup Installer"
echo "========================================"
echo -e "${N}"

pkg update -y
pkg install curl -y

echo -e "${Y}Downloading Nano configuration...${N}"

curl -fsSL https://raw.githubusercontent.com/PRINCE-7081/nano-setup11/main/.nanorc -o "$HOME/.nanorc"

if [ $? -eq 0 ]; then
    echo -e "${G}"
    echo
clear
 "========================================"
    echo " Nano Configuration Installed!"
    echo "========================================"
    echo "Developer : PRINCE-7081"
    echo -e "${N}"
else
    echo -e "${R}Download Failed!${N}"
fi