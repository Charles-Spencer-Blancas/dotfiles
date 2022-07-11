#!/usr/bin/fish

set name "Charles Spencer Blancas"
set email "86479293+Charles-Spencer-Blancas@users.noreply.github.com"

git config --global user.name "$name"
git config --global user.email "$email"
git config --global init.defaultBranch main
git config --global color.ui auto

ssh-keygen -t ed25519 -C $email
cat ~/.ssh/id_ed25519.pub
