#!/bin/sh

REPOSITORIES_DIR=$HOME/Repositories
DOTFILES_DIR=$REPOSITORIES_DIR/dotfiles
DOTFILES_GIT_URL=https://github.com/nikolvs/dotfiles.git

if ! command -v git > /dev/null ; then
    echo "=> Installing git..."
    sudo pacman -Sy --noconfirm git
fi

if [ ! -d $DOTFILES_DIR ] ; then
    echo "=> Preparing directories..."
    mkdir -p $REPOSITORIES_DIR
    git clone $DOTFILES_GIT_URL $DOTFILES_DIR
    cd $DOTFILES_DIR && git submodule update --init
fi

echo "=> Provisioning machine..."
cd $DOTFILES_DIR && make

echo "=> Done."
exit 0
