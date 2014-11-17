# dotfiles

Some of my dotfiles made public, managed via [rcm][1].

### Install

First, you'll need to install rcm via homebrew.

```
$ brew tap thoughtbot/formulae
$ brew install rcm
```

Next, clone this repository into your $HOME.

```
$ git clone git@github.com:mikeric/dotfiles.git ~/.dotfiles
```

Lastly, rcup dis bish.

```
$ env RCRC=$HOME/.dotfiles/rcrc rcup
```

### Vim

A pretty vanilla Vim configuration, with the addition of a few essentials: [NERDTree][2], [ctrlp][3], [vim-surround][4] and [vim-easy-align][5].

Install [vundle][6] and then run `:PluginInstall` within Vim.

### Git

Only a few useful aliases here for now: `sd` for a colored staged diff, `clear` to reset everything back to HEAD including untracked changes, `pub` to publish the current branch to origin or a specified remote.

### Bash

Includes a minimal bash prompt with current branch info. Also includes an `rmb` command to remove all merged-into-master branches (local + remote).

[1]: http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos
