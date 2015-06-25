#!/bin/sh

DOT_FILES_DIR=`dirname $0`;

# test -h $HOME/.emacs || ln -s $DOT_FILES_DIR/.emacs $HOME/.emacs
### link directories under .emacs.d/*
pushd $DOT_FILES_DIR > /dev/null;
find . -regex ".*/\.[0-9a-zA-Z_]*$" -type f -depth 1 -print | xargs -I{} basename {} | xargs -I{} sh -c "test -e $HOME/{} || ln -s $DOT_FILES_DIR/{} $HOME/{}";
popd > /dev/null;
