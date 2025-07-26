#!/usr/bin/env bash

TARGET="$HOME/Documents/MilanSkocic/config"

SOURCES=".bashrc .zshrc .tmux.conf"
for s in $SOURCES; do
    cp -rfv $HOME/$s $TARGET/
done


SOURCES="yazi kitty neomutt matplotlib"
for s in $SOURCES; do
    if [ -d $HOME/.config/$s/ ]; then
        cp -rfv $HOME/.config/$s/ $TARGET/
    fi
done
