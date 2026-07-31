# Personal dotfiles

I don't think this needs any introduction but my config basically uses the following tools:

- zsh
- tmux
- vim
- i3
- ghostty

> I don't need anything else in my workflow. CMake and other tools are enough. Maybe opencode for an ai agent. I think it is even a bit too much tools. My philosphy for my config is that it should be as close to the default state and only bring improvement that increase effectivness. (Hence why i switched from nvim to vim. Neovim was bringing many improvement over vim for me but a lot of config overhead --> too many plugins broke.)

## Install

There is a bash script 'apply.sh' that install some dependencies and copy the config files to their destination.
From the dotfiles folder run:

> user@linux:~/dotfiles/ $ ./apply.sh

## Plugins also included in this repo

### Vim plugins
- comentary
- ctrlp
- everforest (theme used)
- gruvbox (theme but not used)
- nerdtree
- tagbar
- vimairline

### tmux plugins

- tpm (plugin manager)
- tmux-resurect
- vim-tmux navigator

### i3 plugins

- polybar
- picom

#### Screensaver
I3 by default doesn't take into account what the user is doing before going into screen save mode. In oder to prevent i3 from locking the screen after not moving the mouse (while watching netflix/youtube for instance), I have decided to use xidlehook.
Install and buld requires `rust ` and `cardo`.

Install with:
```bash
cargo install xidlehook --bins
```
