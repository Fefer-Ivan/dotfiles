#! /bin/bash
dotfiles=(".bashrc" ".zshrc" ".screenrc" ".tmux.conf" ".vim" ".vimrc" ".ssh/rc")
dir="${HOME}/dotfiles"

for dotfile in "${dotfiles[@]}"; do
  ln -sf "${dir}/${dotfile}" "${HOME}/${dotfile}"
done

