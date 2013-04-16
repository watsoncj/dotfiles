# watsoncj's dotfiles

These dotfiles are packaged as a homesick castle. The easiest way to install them is with [homeshick](https://github.com/andsens/homeshick).

## Install Homeshick

    wget -O - --no-check-certificate 'https://raw.github.com/andsens/homeshick/master/install.sh' | bash
    alias homesick="$HOME/.homeshick"

## Install Vundle

I use vundle to manage vim plugins.

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

## Install this Castle

You may want to backup any files that the symlink task asks to replace.

    homesick clone https://github.com/watsoncj/dotfiles
    homesick symlink dotfiles
    exec $SHELL

## Install Bundles

    vim "+:BundleInstall"

## Local settings

These dotfiles will source `~/.bash_local`. This is a good file to place any machine specific variables, functions or passwords.
