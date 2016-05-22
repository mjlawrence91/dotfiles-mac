#! /usr/bin/env bash
set -e

# Source: https://gist.github.com/davejamesmiller/1965569
ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

dir=`pwd`

if ask "Install symlink for .zshrc?" Y; then
  ln -sf ${dir}/.zshrc ${HOME}/.zshrc
  ln -sf ${dir}/.aliases.zsh ${HOME}/.aliases.zsh
fi

#if ask "Install symlink for .npmrc?" Y; then
#  ln -sf ${dir}/.npmrc ${HOME}/.npmrc
#fi

#if ask "Install symlink for .config/termite?" Y; then
#  ln -sfn ${dir}/.config/termite ${HOME}/.config/termite
#fi

if ask "Install symlink for .atom?" Y; then
  ln -sfn ${dir}/.atom ${HOME}/.atom
fi

if ask "Install symlink for .config/fish?" Y; then
  ln -sfn ${dir}/.config/fish ${HOME}/.config/fish
  ln -sfn ${dir}/.config/omf ${HOME}/.config/omf
fi

if ask "Install symlink for .config/nvim?" Y; then
  ln -sfn ${dir}/.config/nvim ${HOME}/.config/nvim
fi

if ask "Install symlink for .vim?" Y; then
  ln -sfn ${dir}/.vim ${HOME}/.vim
fi

#if ask "Install symlink for .tmux.conf?" Y; then
#  ln -sf ${dir}/.tmux.conf ${HOME}/.tmux.conf
#fi

#if ask "Install symlink for .yaourtrc?" Y; then
#  ln -sf ${dir}/.yaourtrc ${HOME}/.yaourtrc
#fi

#if ask "Install symlink for .Xresources?" Y; then
#  ln -sf ${dir}/.Xresources ${HOME}/.Xresources
#fi

#if ask "Install symlink for .xinitrc?" Y; then
#  ln -sf ${dir}/.xinitrc ${HOME}/.xinitrc
#fi

#if ask "Install symlink for .i3blocks.conf?" Y; then
#  ln -sf ${dir}/.i3blocks.conf ${HOME}/.i3blocks.conf
#fi

#if ask "Install symlink for .scripts?" Y; then
#  ln -sfn ${dir}/.scripts ${HOME}/.scripts
#fi

#if ask "Install symlink for i3?" Y; then
#  ln -sfn ${dir}/.config/i3 ${HOME}/.config/i3
#fi
