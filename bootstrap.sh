#!/usr/bin/env bash

git pull
git submodule update --init --recursive --quiet

#Installing the Monaco Font
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash

gconftool-2 --load terminal-color-scheme.xml

function doIt() {
    rsync --exclude ".DS_Store" -avh ./public/ ~
    echo

    for file in $(find private -type f -exec ls {} \; 2> /dev/null | sed 's/private\///'); do
        if [[ $file != '.gitignore' ]]; then
            echo "Adding private config to $file"
            cat ./private/$file >> ~/$file
        fi
    done
    unset file
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    doIt
fi

unset doIt
source ~/.bash_profile
