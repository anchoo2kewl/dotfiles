Roland's Dotfiles
=================

This repo contains my Ubuntu/OSX dotfiles, which are based off [mathiasbynens's](https://github.com/mathiasbynens/dotfiles)/[paulirish's](https://github.com/paulirish/dotfiles) dotfiles and [cowboy's prompt](https://github.com/cowboy/dotfiles/blob/master/source/50_prompt.sh).


Installation
------------

```bash
git clone https://github.com/Rowno/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

To update the dotfiles, just run `bootstrap.sh` again.


Overview of Files
-----------------

### Directories
* `private/` - private config that is merged with the public dotfiles, explained below.
* `public/` - the actual dotfiles that are placed in `~/`.
* `public/.dotfiles/` - custom dotfiles and libs.

###  Automatic Config
* `.gitconfig`
* `.inputrc` - config for bash readline.
* `.nanorc`
* `.xbindkeysrc` - custom mouse button bindings.

### Shell Environment
* `.bash_profile`
* `.bashrc`
* `.dotfiles/.aliases`
* `.dotfiles/.bash_prompt`
* `.dotfiles/.exports`
* `.dotfiles/.functions`
* `.dotfiles/.path` - not included, optional.


Private Config
--------------

Place any private config, or config that you don't want in version control, in the `private/` directory. Any files in this directory (excluding the `.gitignore`) will be copied along with all the dotfiles in the `public/` directory or appended to dotfiles that already exist.
