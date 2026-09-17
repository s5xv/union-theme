# UNION THEME

**Unified National Institute for Orbital and Nuclear Research**

A complete Hyprland desktop rice. Soviet scientific workstation aesthetic. Dark graphite, muted colors, JetBrains Mono.

> **DISCLAIMER:** UNION is fictional. All names, facilities, projects, and classifications are made up for aesthetic purposes.

---

## Quick Start (Recommended)

```bash
git clone https://github.com/s5xv/union-theme
cd union-theme
./union-setup
```

This interactive wizard will:
- Check your system for existing packages
- Install all required and optional packages via pacman
- Copy every config file to the right place
- Set up shell aliases and completions
- Install SDDM login theme (optional)
- Install GRUB bootloader theme (optional)
- Generate sound effects
- Add the terminal login banner to your shell

**That's it. Restart Hyprland or log out/in.**

---

## What You Get

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

### Components

| What | Where it goes |
|------|---------------|
| Hyprland config (70+ keybindings) | `~/.config/hypr/` |
| Waybar dock (default, macOS auto-hide, volume bar) | `~/.config/waybar/` |
| Waybar top bar (alternative, CPU/MEM/TEMP/DISK/NET/VOL/BAT/CLOCK) | `~/.config/waybar/` |
| Kitty terminal (CRT effects, UNION colors) | `~/.config/kitty/` |
| Starship prompt (git, docker, UNION symbol) | `~/.config/starship.toml` |
| Rofi launcher (app search, power menu, wallpaper picker) | `~/.config/rofi/` |
| Mako notifications (typed colors) | `~/.config/mako/` |
| btop (UNION theme) | `~/.config/btop/` |
| Neovim (UNION colorscheme) | `~/.config/nvim/` |
| Tmux (red statusbar) | `~/.tmux.conf` |
| Swaylock (lock screen) | `~/.config/swaylock/` |
| Swayidle (auto-lock) | `~/.config/swayidle/` |
| Neofetch / Fastfetch | `~/.config/neofetch/`, `~/.config/fastfetch/` |
| Shell aliases (100+) | `~/.config/shell/aliases.sh` |
| GRUB bootloader theme | `/boot/grub/themes/union/` |
| SDDM login screen | `/usr/share/sddm/themes/union/` |
| Sound effects | `/usr/share/union/sounds/` |
| Scripts (13 tools) | `/usr/local/bin/union-*` |
| ASCII art (10 files) | `~/.config/union/ascii/` |

---

## Keybindings

| Key | What it does |
|-----|--------------|
| `SUPER+Return` | Open terminal |
| `SUPER+D` | Open app launcher |
| `SUPER+W` | Open Firefox |
| `SUPER+E` | Open file manager |
| `SUPER+S` | Open btop |
| `SUPER+SHIFT+P` | Power menu (shutdown/reboot/lock/logout) |
| `SUPER+SHIFT+W` | Wallpaper picker |
| `SUPER+Space` | Toggle Arabic/English keyboard |
| `SUPER+L` | Lock screen |
| `SUPER+C` | Clipboard history |
| `SUPER+1-6` | Switch workspace |
| `SUPER+SHIFT+1-6` | Move window to workspace |
| `SUPER+H/J/K/L` | Focus window |
| `SUPER+SHIFT+H/J/K/L` | Move window |
| `SUPER+CTRL+H/J/K/L` | Resize window |
| `SUPER+F` | Fullscreen |
| `SUPER+V` | Toggle floating |
| `SUPER+G` | Toggle group |
| `Print` | Screenshot area |
| `SHIFT+Print` | Screenshot whole screen |
| Volume keys | 5% steps with sound |
| `SHIFT+Volume` | 1% fine-tune |

---

## Installation Options

### Option 1: Interactive Setup (Recommended)

```bash
git clone https://github.com/s5xv/union-theme
cd union-theme
./union-setup
```

Wizard walks you through: system check â†’ packages â†’ theme â†’ shell â†’ SDDM â†’ GRUB â†’ sounds.

### Option 2: Quick Install (All at once)

```bash
git clone https://github.com/s5xv/union-theme
cd union-theme
chmod +x install.sh
./install.sh
```

Copies all files automatically. Run `union-setup` afterward for SDDM/GRUB.

### Option 3: Manual Install

```bash
# Core configs
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
cp -r neofetch/ ~/.config/neofetch/
cp -r fastfetch/ ~/.config/fastfetch/

# Scripts
sudo cp scripts/* /usr/local/bin/
chmod +x /usr/local/bin/union-*

# Shell
mkdir -p ~/.config/shell
cp shell/aliases.sh ~/.config/shell/
cp shell/bashrc ~/.bashrc.union
cp shell/zshrc ~/.zshrc.union
echo "source ~/.config/shell/aliases.sh" >> ~/.bashrc
echo "source ~/.config/shell/aliases.sh" >> ~/.zshrc

# UNION assets
mkdir -p ~/.config/union
cp -r ascii/ ~/.config/union/
cp colors/palette.conf ~/.config/union/
```

---

## Dependencies

**Required:** hyprland waybar kitty rofi-wayland mako swww starship jq grimblast-git brightnessctl wireplumber xdg-desktop-portal-hyprland polkit-gnome sox playerctl thunar btop neovim tmux

**Optional:** fastfetch neofetch papirus-icon-theme ttf-jetbrains-mono-nerd cliphist swaylock swayidle grim slurp wl-clipboard nm-applet blueman fzf fd lazygit lazydocker ranger dunst wofi libnotify hyprpaper

---

## Switching Bar Styles

```bash
# Top bar (default)
pkill waybar && waybar &

# Bottom dock (macOS-style, auto-hide)
pkill waybar && waybar -c ~/.config/waybar/dock.jsonc -s ~/.config/waybar/dock-style.css &
```

---

## Sound Effects

Auto-generated via `sox` on first install. 8 sounds: volume tick, volume up/down, mute, notify, warning, error, startup.

Disable: `export UNION_NOTIFY_SOUND=0` in your shell rc.

---

## Customization

- **Colors:** Edit `colors/palette.conf` or search/replace hex values in config files
- **Workspaces:** Edit workspace list in `hypr/hyprland.conf`
- **Wallpapers:** Drop images in `~/Pictures/union/`, press `SUPER+SHIFT+W`

---

## Scripts

| Script | What it does |
|--------|--------------|
| `union-login` | Terminal login banner (runs on shell start) |
| `union-logo` | Display ASCII art in terminal |
| `union-status` | System status panel |
| `union-notify` | Send themed notifications |
| `union-sounds` | Play/generate sound effects |
| `union-toggle` | Toggle apps open/closed |
| `union-power` | Rofi power menu |
| `union-wallpaper-picker` | Rofi wallpaper selector |
| `union-wallpaper` | Set wallpaper via swww/hyprpaper/feh |
| `union-workspace` | Show current workspace |
| `union-custom` | Waybar helper (status, weather, disk, uptime) |
| `union-rice-show` | Screenshot + system info display |
| `union-splash` | Startup splash screen |

---

## License

MIT
