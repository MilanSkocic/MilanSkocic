#!/usr/bin/env bash

# DEFINE
PROGNAME="setconfig"
PROGVERSION="1.0"
SHORTDESCRIPTION="Backup or set the configuration files."
HOMEPAGE="Home Page"
LICENSE="MIT"
MANSECTION="1"

GITREPO="$HOME/Documents/MilanSkocic/3-Resource/config"
DOTFILES=".bashrc .zshrc .tmux.conf"

# MENU FUNCTIONS
help () {
    echo "NAME"
    echo "    $PROGNAME($MANSECTION) - $SHORTDESCRIPTION"
    echo ""

    echo "SYNOPSIS"
    echo "    $PROGNAME SUBCOMMAND [SUBCOMMAND_OPTIONS]" 
    echo ""

    echo "DESCRIPTION"
    echo "   $PROGNAME can set or backup user configuration files."
    echo ""
    
    echo "SUBCOMMANDS"
    echo "+ backup    Backup the configuration files."
    echo "+ set       Set the configuration files."
    echo ""
    
    #echo "SUBCOMMANDS_OPTIONS"
    #echo " -d, --directory PATH    Set the directory."
    #echo ""

    echo "EXAMPLES"
    echo "  $PROGNAME backup"
    echo "  $PROGNAME set"
    echo "  $PROGNAME set /path/to/user/folder"
    echo ""
    
}

version () {
    echo "Version:      $PROGVERSION"
    echo "Program:      $PROGNAME"
    echo "Description:  $SHORTDESCRIPTION"
    echo "Home Page:    $HOMEPAGE"
    echo "License:      $LICENSE"
    echo "OS Type:      $OSTYPE"
}


backup () {
    for s in $DOTFILES; do
        cp -rfv $HOME/$s $GITREPO/
    done

    DOTFILES="nvim yazi kitty ghostty neomutt matplotlib wezterm"
    for s in $DOTFILES; do
        if [ -d $HOME/.config/$s/ ]; then
            cp -rfv $HOME/.config/$s/ $GITREPO/
        fi
    done

}

set () {
    for i in $GITREPO/.*; do
        cp -rfv $i $HOME/
    done

    for i in $GITREPO/*; do
        cp -rfv $i $HOME/.config/
    done
}


case $1 in 
    "--help"|"-h")
        help
        exit 0
        ;;
    "--version"|"-v")
        version
        exit 0
        ;;
    "backup")
        backup
        exit 0
        ;;
    "set")
        set 
        exit 0
        ;;
    *)
        help
        exit 0
        ;;
esac



