#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

clear
echo "${bold}Welcome to the second part of the installation of NixOS${normal}"
sleep 1
echo "You ran the first scrip installation.sh and logged back in."
sleep 1

echo "Give your password to start the installation"
sleep 1
sudo echo
clear

echo "${bold}Installing the system config${normal}"
sleep 2
sudo nixos-rebuild switch
sleep 1
clear


echo "${bold}Flatpak${normal}"
sleep 1

echo "Adding Flatpak repository"
sleep 1
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sleep 1
clear

# echo "Installing flatpak applications"
# sleep 1
# flatpak install ca.desrt.dconf-editor -y
# sleep 1
# clear


echo "${bold}Adding Anki plugins${normal}"
sleep 1
echo "Do you want to copy the Anki plugins? (you need the password)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) wget https://github.com/Sitolam/nixosbox/releases/download/v1.0.0/anki_plugins.7z
              7z x anki_plugins.7z
              cp -r addons21 ~/.local/share/Anki2; break;;
        No ) break;;
    esac
done
sleep 1
clear


echo "${bold}Adding prism launcher instance${normal}"
sleep 1
echo "Do you want to copy the minecraft instances? (you need the password)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) wget https://github.com/Sitolam/nixosbox/releases/download/v1.0.0/prismlauncher.7z
              7z x anki_plugins.7z
              mkdir -p ~/.local/share/PrismLauncher
              cp -r PrismLauncher ~/.local/share; break;;
        No ) break;;
    esac
done
sleep 1
clear


echo "${bold}Installing betterdicord${normal}"
sleep 1
betterdiscordctl install
sleep 1
clear

# echo "${bold}Grub switch${normal}"
# sleep 1
# echo "Do you want to setup grub-switch?"
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) cd ~/Downloads
#               git clone https://github.com/Sitolam/grub-switch
#               cd grub-switch/1_config_scripts
#               bash CONFIGURE_GRUBswitch.sh
#               cd ../bootfiles
#               clear

#               echo "${bold}Now you need to choose the drive to install the grub switch (e.g. sda)${normal}"
#               lsblk
#               read -p "Drive: " drive
#               mountpoint="$(lsblk -no MOUNTPOINT /dev/$drive)"
#               echo "Are you sure you want to format /dev/$drive?"
#               select fmtyn in "Yes" "No"; do
#                     case $fmtyn in
#                         Yes ) echo "Formatting ..."
#                         	  sync && sudo umount $mountpoint
#                         	  sudo gdisk /dev/$drive <<EOF
# o
# Y
# w
# Y
# EOF
#                         	  sudo mkfs.ext4 -L grub-switch /dev/$drive
#                         	  sudo mkdir -p /run/media/$(whoami)/grub-switch
#                         	  sudo mount /dev/$drive /run/media/$(whoami)/grub-switch
#                         	  sudo cp ~/Downloads/grub-switch/bootfiles/boot.1/SWITCH.GRB /run/media/$(whoami)/grub-switch
#                         	  sudo umount /dev/$drive
#                         	  sudo rmdir /run/media/$(whoami)/grub-switch; break;;
#                         No ) break;;
#                     esac
#                 done
#                 break;;
#         No ) break;;
#     esac
# done
# sleep 1
# clear

echo "${bold}Setting up distrobox${normal}"
sleep 1
distrobox-create --root --name arch --image archlinux:latest -Y
distrobox-enter --root arch -- exit
distrobox-enter --root arch -- sudo pacman -S --needed base-devel git --noconfirm
cd ~/Downloads 
git clone https://aur.archlinux.org/yay.git 
cd yay 
distrobox-enter --root arch -- makepkg -si --noconfirm


echo "${bold}The installation is complete, please reboot and enjoy.${normal}"
read -n 1 -s -r -p "Press any key to continue ... "
clear

echo "${bold}Here are the next steps:${normal}"
echo "Login in Firefox"
echo "Login in Bitwarden"
echo "Add your Google account in the Gnome settings."
echo "Login in all the applications"
read -n 1 -s -r -p "Press any key to continue ... "
clear
disfetch
