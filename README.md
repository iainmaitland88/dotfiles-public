# Quick start

Dotfiles. Uses [stow](https://www.gnu.org/software/stow/)

Most dotfiles destination is `$HOME/.config` so they have a directory structure
that mirrors that to make stowing easy.

```bash
aerospace # <-- package name used by stow
└── .config # <-- stow will create symlinks from here
    └── aerospace
        └── aerospace.toml
```

💡 Set `$STOW_DIR` to `$HOME` to avoid passing `-t` option on below commands.

Stow a package
```bash
stow -t ~ aerospace
```

Un-stow a package
```bash
stow -t ~ -D aerospace
```

If the dotfile is actually a dotfile, like `.tmux.conf`, and should go in
`$HOME` and not `$HOME/.config`, then put it in a directory prefixed with
`dot-` and use the `--dotfiles` option with `stow`.

Stow a dotfiles flavoured package
```bash
stow --dotfiles -t ~ dot-tmux
```

Un-stow a dotfiles flavoured package
```bash
stow --dotfiles -t ~ -D dot-tmux
```
