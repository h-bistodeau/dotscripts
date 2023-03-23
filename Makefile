#!/bin/bash

#errors in syntax if command is wrong
if [[ $# -ne 1 ]]; then
        echo "$0 (link|unlink)"
        exit 1
fi

#actually link/unlink
if [[ $1 != "link" && $1 != "unlink" ]]; then
        echo "invalid subcommand"
        echo "$0 (link|unlink)"
fi

if [[ $1 == "link" ]]; then
        cp -f ~/.scripts/Makehtml ~/bin/Makehtml
        cp -f ~/.scripts/Makeflask ~/bin/Makeflask
        ln -s ~/.scripts/Makehtml ~/bin/Makehtml
        ln -s ~/.scripts/Makeflask ~/bin/Makeflask
fi


if [[ $1 == "unlink" ]]; then
        rm -f ~/bin/Makehtml
        rm -f ~/bin/Makeflask
fi
