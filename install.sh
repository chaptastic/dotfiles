#!/bin/bash

for f in gitconfig gvimrc tmux.conf vimrc.bundles.local vimrc.local zshrc offlineimaprc muttrc mutt offlineimap.py msmtprc; do
    ln -sf `pwd`/$f ~/.$f
done

if [ ! -d ~/.spf13-vim-3 ]; then
    echo "Installing SPF13-Vim"
    sh <( curl https://raw.github.com/spf13/spf13-vim/3.0/bootstrap.sh -L)
fi

if [ ! -d ~/.emacs.d ]; then
    echo "Installing emacs-prelude"
    git clone https://github.com/chaptastic/prelude.git ~/.emacs.d
fi

if [ ! -d ~/.lein ]; then
    mkdir ~/.lein
fi

ln -sf `pwd`/lein-profiles.clj ~/.lein/profiles.clj

if [ ! -d ~/.oh-my-zsh ]; then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi

ln -sf `pwd`/flazz-chap.zsh-theme ~/.oh-my-zsh/themes/flazz-chap.zsh-theme
