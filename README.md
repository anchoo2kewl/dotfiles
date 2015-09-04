Dotfiles
========

My custom terminal config, aliases and functions.


Prerequisites
-------------

The dotfiles have only been tested on OSX and Ubuntu, but they should work on most UNIX based systems.

Zsh is required to run these dotfiles. It comes preinstalled on OSX and can be installed on Ubuntu using `sudo apt-get install zsh`.


Installation
------------

To install the dotfiles clone the dotfiles repo, run `./bootstrap.sh` and restart your terminal.

The `bootstrap.sh` script will copy all the files in the `public` and `private` directories to your home directory. Files in the `private` directory are also appended, see Private Config for more info.

To update the dotfiles just run `./bootstrap.sh` and restart your terminal again.

To install a bunch of handy Node based command line tools run `./npm.sh`.


Overview of Files
-----------------

### Directories
* `private/` - private config that is merged with the public dotfiles, explained below.
* `public/` - the actual dotfiles that are placed in `~/`.
* `public/.dotfiles/` - shell environment and third party libraries.
* `public/.dotfiles/vendor/` - third party libraries.
* `public/.dotfiles/zfunctions/` - additional zsh functions.

###  Config
* `.gitconfig`
* `.ssh/config`

### Shell environment
* `.zshrc`
* `.dotfiles/aliases.sh`
* `.dotfiles/functions.sh`
* `bin/httpcompression`


Private Config
--------------

Place any private config, or config that you don't want in version control, in the `private/` directory. Any files in this directory (excluding the `.gitignore`) will be copied along with all the dotfiles in the `public/` directory or appended to dotfiles that already exist.


Help
----

Run `cheatsheet` to get a full list with descriptions of all the custom aliases and functions.


License
-------

My dotfiles are released under the MIT license.

Copyright © 2012 Roland Warmerdam.
