# Quick start

Symlink config files to `.config` like

```bash
mkdir ~/.config/nvim
ln -s /Users/iain.maitland/Code/iainmaitland88/dotfiles-public/.config/nvim/init.lua ~/.config/nvim/init.lua
```

Don't symlink directories or we can end up with extra files in here which make for annoying git statuses.

## tmux

Uses [tpm](https://github.com/tmux-plugins/tpm) to manage plugins.

Clone tpm in to the home directory:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then launch tmux (after symlinking ofcourse) and install plugins with `ctrl`+`b`, `I`
