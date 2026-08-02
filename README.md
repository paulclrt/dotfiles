# Personal dotfiles

I don't think this needs any introduction but my config basically uses the following tools:

- zsh
- tmux
- vim
- i3
- ghostty/kitty

> I don't need anything else in my workflow. CMake and other tools are enough. Maybe opencode for an ai agent. I think it is even a bit too much tools. My philosphy for my config is that it should be as close to the default state and only bring improvement that increase effectivness. (Hence why i switched from nvim to vim. Neovim was bringing many improvement over vim for me but a lot of config overhead --> too many plugins broke.)

## Install

There is a bash script 'apply.sh' that install some dependencies and copy the config files to their destination.
From the dotfiles folder run:

> user@linux:~/dotfiles/ $ ./apply.sh

## Plugins also included in this repo

### Vim plugins
- comentary
- fzf
- everforest (theme used)
- gruvbox (theme but not used)
- easymotion
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
Install and build requires `rust` and `cargo`.

Install with:
```bash
cargo install xidlehook --bins
```

## Notes

### NixOS
I have experimented with nixos and found it very pleasing to have all the configuration of the system versionable and declarative. That's why there is a nixos folder from now on that contains the config i built over the last few days. 
This file is also made so the dotfiles configuration is written as usuall and nixos just creates symlinks instead of configuring vim,zsh etc in nix programming language.
(note: I don't plan to switch to nix for now, but I appreciated the experience)
I got i3, vim, zsh, ghostty, lf working and the system is pleasant to use.
