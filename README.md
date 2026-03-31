# dotfiles

Varun's Arch Linux + Hyprland dotfiles.

## Stack
- WM: Hyprland
- Bar: Waybar
- Terminal: Kitty
- Shell: Zsh
- Wallpaper: awww (formerly swww)
- Theme: Catppuccin Mocha

## Usage
```bash
git clone https://github.com/vakeer56/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## Notes
- Uses GNU Stow for symlinking configs into `~/.config`
- `pkglist.txt` contains all explicitly installed packages
- `awww` replaces `swww` — symlink handled automatically in `install.sh`
