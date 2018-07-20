#! /bin/bash
dotfiles=(".bashrc" ".screenrc" ".tmux.conf" ".vim" ".vimrc")
dir="${HOME}/dotfiles"

for dotfile in "${dotfiles[@]}"; do
  ln -s "${dir}/${dotfile}" "${HOME}/${dotfile}"
done

