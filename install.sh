#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Installing yay (AUR helper)..."
if ! command -v yay &>/dev/null; then
  sudo pacman -S --needed git base-devel
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay && makepkg -si
fi

echo "==> Installing packages from pkglist.txt..."
yay -S --needed - < "$DOTFILES_DIR/pkglist.txt"

echo "==> Installing GNU Stow..."
sudo pacman -S --needed stow

echo "==> Stowing configs..."
cd "$DOTFILES_DIR"
stow --target="$HOME/.config" .config

echo "==> Handling awww symlink fix..."
if command -v awww &>/dev/null && ! command -v swww &>/dev/null; then
  sudo ln -sf "$(which awww)" /usr/local/bin/swww
  echo "    Symlink created: swww -> awww"
fi

echo "==> Setting zsh as default shell..."
chsh -s "$(which zsh)" "$USER"

echo ""
echo "Done! Reboot or re-login for everything to take effect."
