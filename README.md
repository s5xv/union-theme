# UNION THEME

**Unified National Institute for Orbital and Nuclear Research**
*Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ð¸Ð½ÑÑ‚Ð¸Ñ‚ÑƒÑ‚ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¸ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ð¹*

A complete Hyprland desktop rice with a fictional Soviet scientific workstation aesthetic. Dark graphite base, muted institutional colors, JetBrains Mono throughout.

> **DISCLAIMER:** UNION is entirely fictional. All organization names, facilities, projects, dates, and classifications are made up for aesthetic purposes.

---

## Screenshot

```
â”Œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”
â”‚ â—‰âŠ•â—‰ â”‚ UNION // Ð“Ð˜Ð¡Ð¡ â”‚ kitty â€” bash                       â—‹â—‹â—â—‹â—‹â—‹ â”‚ SYS Â· CPU Â· MEM Â· TEMP Â· DISK Â· NET Â· VOL Â· BAT Â· 14:23 â”‚
â”œâ”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”¤
â”‚                                                                         â”‚
â”‚   Terminal with UNION login banner                                      â”‚
â”‚                                                                         â”‚
â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
                             â—‹â—‹â—â—‹â—‹â—‹  (bottom dock, auto-hide)
```

---

## What's Included

| Component | File(s) | Description |
|-----------|---------|-------------|
| **Hyprland** | `hypr/hyprland.conf` | 70+ keybindings, workspace labels, window rules |
| **Waybar (top)** | `waybar/config.jsonc`, `style.css` | CPU/MEM/TEMP/DISK/NET/VOL/BAT/CLOCK/NOTIF, workspace dots |
| **Waybar (dock)** | `waybar/dock.jsonc`, `dock-style.css` | macOS-style auto-hide dock with volume bar |
| **Kitty** | `kitty/kitty.conf` | CRT effects, UNION colors, tab title |
| **Starship** | `starship/starship.toml` | Git status, docker, ahead/behind, UNION prompt |
| **Rofi** | `rofi/config.rasi`, `union.rasi`, `power.rasi` | Launcher, theme, power menu |
| **Mako** | `mako/config` | Notifications with typed border colors |
| **Dunst** | `dunst/dunstrc` | Fallback notification daemon |
| **btop** | `btop/btop.conf` | UNION-themed system monitor |
| **Neovim** | `nvim/init.lua` | UNION colorscheme, statusline |
| **Tmux** | `tmux/tmux.conf` | Red statusbar, vim bindings |
| **Swaylock** | `swaylock/config` | Lock screen theme |
| **Swayidle** | `swaylock/idle` | Auto-lock/screen off timeouts |
| **GRUB** | `grub/theme.txt` | Bootloader theme |
| **SDDM** | `sddm/union/` | Login screen with UNION emblem |
| **Shell** | `shell/aliases.sh`, `bashrc`, `zshrc` | 100+ aliases, starship, fzf |
| **Neofetch** | `neofetch/` | System info with UNION metadata |
| **Fastfetch** | `fastfetch/` | Alternative system info |
| **systemd** | `systemd/` | Auto-start services |
| **Sounds** | `scripts/union-sounds` | Volume ticks, notification dings |
| **ASCII Art** | `ascii/` (10 files) | Logos, banners, boot sequence, errors |

---

## Keybindings

| Key | Action |
|-----|--------|
| `SUPER+Return` | Terminal (kitty) |
| `SUPER+D` | App launcher (rofi) |
| `SUPER+W` | Firefox |
| `SUPER+E` | File manager (Thunar) |
| `SUPER+S` | btop |
| `SUPER+SHIFT+P` | Power menu |
| `SUPER+SHIFT+W` | Wallpaper picker |
| `SUPER+Space` | Toggle Arabic/English |
| `SUPER+L` | Lock screen |
| `SUPER+C` | Clipboard history |
| `SUPER+1-6` | Switch workspace |
| `SUPER+SHIFT+1-6` | Move window to workspace |
| `SUPER+H/J/K/L` | Focus window (vim) |
| `SUPER+SHIFT+H/J/K/L` | Move window (vim) |
| `SUPER+CTRL+H/J/K/L` | Resize window |
| `SUPER+F` | Fullscreen |
| `SUPER+V` | Toggle floating |
| `SUPER+T` | Toggle tiled |
| `SUPER+G` | Toggle group |
| `SUPER+APOSTROPHE` | Move into group |
| `SUPER+PERIOD` | Next in group |
| `Print` | Screenshot area |
| `SHIFT+Print` | Screenshot screen |
| `SUPER+Print` | Screenshot & save |
| `SUPER+SHIFT+Print` | Screenshot & copy |
| Volume keys | 5% steps + sound |
| `SHIFT+Volume` | 1% fine-tune |

Full list: `grep "^bind" hypr/hyprland.conf`

---

## Installation

### Quick Install

```bash
git clone https://github.com/s5xv/union-theme
cd union-theme
chmod +x install.sh
./install.sh
```

### Manual Install

```bash
# Copy configs
cp -r hypr/ ~/.config/hypr/
cp -r waybar/ ~/.config/waybar/
cp -r kitty/ ~/.config/kitty/
cp starship/starship.toml ~/.config/starship.toml
cp -r rofi/ ~/.config/rofi/
cp -r mako/ ~/.config/mako/
cp -r btop/ ~/.config/btop/
cp -r nvim/ ~/.config/nvim/
cp tmux/tmux.conf ~/.tmux.conf
cp -r swaylock/ ~/.config/swaylock/
mkdir -p ~/.config/swayidle && cp swaylock/idle ~/.config/swayidle/config

# Copy scripts
sudo cp scripts/* /usr/local/bin/
chmod +x /usr/local/bin/union-*

# Copy shell
mkdir -p ~/.config/shell
cp shell/aliases.sh ~/.config/shell/
# Add to ~/.bashrc or ~/.zshrc:
#   source ~/.config/shell/aliases.sh
```

### SDDM Theme (optional)

```bash
sudo cp -r sddm/union /usr/share/sddm/themes/
echo "[Theme]
Current=union" | sudo tee /etc/sddm.conf.d/union.conf
```

### GRUB Theme (optional)

```bash
sudo cp -r grub/ /boot/grub/themes/union/
echo 'GRUB_THEME="/boot/grub/themes/union/theme.txt"' | sudo tee -a /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

---

## Dependencies

### Required
`hyprland` `waybar` `kitty` `rofi-wayland` `mako` `swww` `starship` `jq` `grimblast-git` `brightnessctl` `wireplumber` `xdg-desktop-portal-hyprland` `polkit-gnome` `sox` `playerctl` `thunar` `btop` `neovim` `tmux`

### Optional
`fastfetch` `neofetch` `papirus-icon-theme` `ttf-jetbrains-mono-nerd` `cliphist` `swaylock` `swayidle` `grim` `slurp` `wl-clipboard` `nm-applet` `blueman` `fzf` `fd` `lazygit` `lazydocker` `ranger` `dunst` `wofi` `libnotify` `hyprpaper`

---

## Dock Mode

The bottom dock is an alternative to the top bar with macOS-style auto-hide:

```bash
# Switch to dock
pkill waybar
waybar -c ~/.config/waybar/dock.jsonc -s ~/.config/waybar/dock-style.css &

# Switch back to top bar
pkill waybar
waybar &
```

---

## Sound Effects

Sounds are auto-generated via `sox` on first install. Files go to `/usr/share/union/sounds/`. Types:

| Sound | Trigger |
|-------|---------|
| `vol-up` | Volume increase |
| `vol-down` | Volume decrease |
| `vol-tick` | Fine-tune volume (1%) |
| `mute` | Mute toggle |
| `notify` | Notifications |
| `warning` | Warning alerts |
| `error` | Error alerts |
| `startup` | System boot |

Disable with: `export UNION_NOTIFY_SOUND=0`

---

## Customization

### Colors
Edit `colors/palette.conf` or modify values directly in:
- `hypr/hyprland.conf` (borders, decorations)
- `waybar/style.css`
- `kitty/kitty.conf`
- `rofi/union.rasi`
- `btop/btop.conf`

### Workspaces
Edit the workspace list in `hypr/hyprland.conf`:
```
workspace = 1, name:ARCHIVE, persistent:true
workspace = 2, name:RESEARCH, persistent:true
```

### Wallpapers
Place images in `~/Pictures/union/` and use `SUPER+SHIFT+W` to pick.

---

## File Count

**65+ files** across 15 directories.

---

## Credits

- **Font:** JetBrains Mono
- **Icon Theme:** Papirus
- **Base Framework:** Hyprland + Waybar + Kitty + Rofi + Starship
- **Aesthetic:** Soviet-era scientific workstation / institutional terminal

---

## License

MIT â€” Do whatever you want with it.
