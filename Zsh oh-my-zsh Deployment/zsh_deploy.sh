#!/bin/bash

sudo apt update -y;
sudo apt upgrade -y;

# Install zsh
sudo apt install -y zsh;

# Install oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
# git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh;
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc;

# Change theme
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' ~/.zshrc;

# Install zsh plugins 
# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;

# Rewrite plugins
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc;

# Restart zsh
# chsh -s /bin/zsh
source ~/.zshrc

# Tidy up
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y zsh && sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' ~/.zshrc && /
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && /
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && /
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc && /
source ~/.zshrc

# gitee
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y zsh && sh -c "$(curl -fsSL https://gitee.com/Devkings/oh_my_zsh_install/raw/master/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' ~/.zshrc && /
git clone https://gitee.com/Annihilater/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && /
git clone https://gitee.com/wangl-cc/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && /
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc && /
source ~/.zshrc
