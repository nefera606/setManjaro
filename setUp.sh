#!/bin/bash

#Update pacman
sudo pacman -Syu

#Install snap install
sudo pacman -S snapd
systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

#Install visual studio code
sudo snap install code --clasic

#Install docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

#Install zsh and oh-my-zsh
sudo pacman -S zsh zsh-completions
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Fancy style
sudo pacman -S figlet
sudo snap install lolcat

#Install nvm
sudo pacman -S nvm
echo "$(cat /usr/share/nvm/init-nvm.sh)" >> ~/.zshrc

#Install jabba
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh

#Install Python 3.9
sudo pacman -S python3

#Install rust
echo "Select option 2 in rust install"
sudo pacman -S cargo
rustup install stable
rustup default stable

#Install go
sudo pacman -S go

#Install java 11
jabba install openjdk@1.11.0

#install clojure
sudo pacman -S rlwrap
curl -O https://download.clojure.org/install/linux-install-1.10.3.943.sh
chmod +x linux-install-1.10.3.943.sh
sudo ./linux-install-1.10.3.943.sh
rm linux-install-1.10.3.943.sh

#Productivity
sudo pacman -S rofi
sudo pacman -S fzf
