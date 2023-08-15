#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

clear
echo "${bold}Welcome to the first part of the installation of nixos${normal}"
sleep 1
echo "You ran trough the installation and rebooted"
sleep 1
echo "${bold}When you are back on the login screen you need to run installation2.sh"
sleep 3


echo "Give your password to start the installation"
sleep 1
sudo echo
clear

echo "${bold}Adding the home manager channel (23.05)${normal}"
sleep 1
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz home-manager
sudo nix-channel --update
sleep 1
clear

echo "${bold}Copying files over${normal}"
sudo chmod -R 777 /etc/nixos
cp configuration.nix /etc/nixos/configuration.nix
cp dconf.nix /etc/nixos/dconf.nix

echo ""
echo "Do you wish to use the hardware-configuration.nix file?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cp hardware-configuration.nix /etc/nixos/hardware-configuration.nix; break;;
        No ) break;;
    esac
done
sleep 1
clear

echo "${bold}Asking a few questions${normal}"
sleep 1

sed -i "s/%user/$USER/g" /etc/nixos/configuration.nix

echo ""
echo "What is your full name?"
read -p "Full name: " name
sed -i "s/%name/$name/g" /etc/nixos/configuration.nix

echo ""
echo "Which hostname do you want?"
read -p "Hostname: " hostname
sed -i "s/%hostname/$hostname/g" /etc/nixos/configuration.nix

echo ""
echo "Is this your network interface:" $(route | awk '{if(NR == 3){print $8}}')
select yn in "Yes" "No"; do
    case $yn in
        Yes ) interface=$(route | awk '{if(NR == 3){print $8}}'); break;;
        No ) echo "What is your network interface?"
             read -p "Interface: " interface; break;;
    esac
done
sed -i "s/%interface/$interface/g" /etc/nixos/configuration.nix

echo ""
echo "Is this the ip address of your gateway: " $(ip -4 addr show $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | sed 's/\(\.[0-9]*\)$/.1/')
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaultgateway=$(ip -4 addr show $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | sed 's/\(\.[0-9]*\)$/.1/'); break;;
        No ) echo "What is the ip address of your gateway?"
             read -p "Ip address gateway: " defaultgateway; break;;
    esac
done
sed -i "s/%defaultgateway/$defaultgateway/g" /etc/nixos/configuration.nix

echo ""
echo "Which static ip address do you want (it's recommended to use your current ip address)?"
echo "Current ip address:" $(ip -4 addr show $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "Do you want to use your current ip address?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ip_address=$(ip -4 addr show $interface | grep -oP '(?<=inet\s)\d+(\.\d+){3}'); break;;
        No ) echo "Which static ip address do you want?"
             read -p "Ip address: " ip_address; break;;
    esac
done
sed -i "s/%ip-address/$ip_address/g" /etc/nixos/configuration.nix
sleep 1
clear

echo "${bold}Adding background${normal}"
sleep 1
cp background ~/.config/background
sleep 1
clear


echo "${bold}Installing the system config${normal}"
sleep 2
sudo nixos-rebuild switch
sleep 1
clear

echo "${bold}Installation finished${normal}"
disfetch
