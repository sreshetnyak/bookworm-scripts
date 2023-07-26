#!/usr/bin/env bash

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

chsh -s $(which zsh)

git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i -e 's@ZSH_THEME=.*@ZSH_THEME="powerlevel10k/powerlevel10k"@' ~/.zshrc

cp -r dotfiles/.p10k.zsh ~/.p10k.zsh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i -e 's@plugins=.*@plugins=(git zsh-syntax-highlighting zsh-autosuggestions)@' ~/.zshrc

echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >> ~/.zshrc

echo 'neofetch' >> ~/.zshrc