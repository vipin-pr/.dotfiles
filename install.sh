#!/bin/bash

echo "[+] Setting emacs mode"
set -o emacs

bashrc_home="~/.bashrc"
echo "[+] Cloning .dotfiles GitHub"
git clone --depth=1 https://github.com/vipin-pr/.dotfiles.git
cd .dotfiles && git pull || cd

echo "[+] Ensuring ~/.vimrc ~/.inputrc ~/.tmux.conf"
touch ~/.vimrc ~/.inputrc ~/.tmux.conf

echo "[+] setting up dotfiles - ~/.bashrc ~/.vimrc ~/.inputrc ~/.tmux.conf"

while IFS= read -r line; do
  grep -qxF "$line" ~/.inputrc || echo "$line" >> ~/.inputrc
done < ~/.dotfiles/.inputrc
echo "[+] .inputrc - configured"

if ! grep -q "# ---------- Custom Config ----------" ~/.bashrc; then
  echo >> ~/.bashrc
  echo "# ---------- Custom Config ----------" >> ~/.bashrc
  echo >> ~/.bashrc
fi

while IFS= read -r line; do
  grep -qxF "$line" ~/.bashrc || echo "$line" >> ~/.bashrc
done < ~/.dotfiles/.bashrc
echo "[+] .bashrc - configured"

while IFS= read -r line; do
  grep -qxF "$line" ~/.tmux.conf || echo "$line" >> ~/.tmux.conf
done < ~/.dotfiles/.tmux.conf
echo "[+] .bashrc - configured"


while IFS= read -r line; do
  grep -qxF "$line" ~/.vimrc || echo "$line" >> ~/.vimrc
done < ~/.dotfiles/.vimrc
echo "[+] .vimrc - configured"


echo "[+] Source .bashrc & .vimrc & .tmux.conf configurations"
source ~/.bashrc
vim -c "source ~/.vimrc" -c "qa"
tmux source-file ~/.tmux.conf

echo "[+] Bind Ctrl+C - Delete previous word"
bind -f ~/.inputrc

echo "[+] dotfiles setup completed :)"
