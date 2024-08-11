# Quick start

Symlink config directories to `.config` like

```bash
ln -s /Users/iain.maitland/Code/iainmaitland88/dotfiles-public/.config/nvim ~/.config
```

## tmux

Uses [tpm](https://github.com/tmux-plugins/tpm) to manage plugins.

Clone tpm in to the home directory:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Then launch tmux (after symlinking ofcourse) and install plugins with `ctrl`+`b`, `I`
