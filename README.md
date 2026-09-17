# UNION THEME

## Unified National Institute for Orbital and Nuclear Research
### Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ð¸Ð½ÑÑ‚Ð¸Ñ‚ÑƒÑ‚ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¸ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ð¹

A complete Hyprland desktop environment theme for Arch Linux, designed to look like a classified Soviet scientific workstation from 1978â€“1988 that survived into the modern era and is now running Arch Linux + Hyprland.

**This is a fictional organization for aesthetic purposes only. No real government agency is represented.**

---

## CONCEPT

UNION is a fictional secretive Soviet government scientific organization from an alternate Cold War timeline, focused on nuclear research, orbital science, lunar missions, deep-space exploration, spacecraft engineering, and advanced scientific computing.

The desktop should feel like an actual organization has existed for decades.

**Target aesthetic:** "Someone found a classified Soviet scientific workstation from 1984, restored it, and discovered that the original interface is now running Arch Linux and Hyprland."

---

## WHAT'S INCLUDED

| Component | Description |
|-----------|-------------|
| Hyprland | Window manager configuration with 6 workspaces |
| Waybar | Status bar styled as scientific instrumentation |
| Kitty | Terminal with UNION color scheme and subtle CRT effects |
| Starship | Shell prompt styled as scientific terminal |
| Rofi | Application launcher styled as classified interface |
| Mako | Notification daemon with institutional styling |
| Scripts | Login banner, logo display, wallpaper management, notifications |
| ASCII Art | Multiple versions of the UNION institutional emblem |
| Fastfetch | Custom system info display with fictional metadata |

---

## FEATURES

### Design
- Dark graphite/charcoal base colors
- Muted Soviet red, desaturated blue, amber, pale green, pale cyan accents
- Subtle 4px border rounding
- 1px thin borders
- Subtle drop shadows
- Subtle transparency (0.95 opacity)
- Subtle blur (4px, 2 passes)
- Dense technical information layout
- JetBrains Mono monospace font
- Consistent color palette across all apps
- Industrial control panel aesthetic

### Hyprland
- 6 workspaces: ARCHIVE, RESEARCH, ORBITAL, LUNAR, DEEP SPACE, CONTROL
- Workspace dot indicators (â—‹â—‹â—â—‹â—‹â—‹)
- Smooth window open/close animations
- Workspace switch animations
- Gaps in: 4px, Gaps out: 8px
- Dwindle tiling layout
- Floating rules for dialogs
- Per-app opacity rules
- Per-app workspace assignments
- Layer rules for Waybar and Mako blur

### Keybindings
| Key | Action |
|-----|--------|
| `SUPER` | Application launcher (Rofi) |
| `SUPER + Return` | Open terminal |
| `SUPER + Q` | Close window |
| `SUPER + E` | File manager |
| `SUPER + V` | Toggle floating |
| `SUPER + D` | Application launcher |
| `SUPER + Space` | Toggle Arabic/English keyboard |
| `SUPER + h/j/k/l` | Focus left/down/up/right |
| `SUPER + SHIFT + h/j/k/l` | Move window |
| `SUPER + CTRL + arrows` | Resize window |
| `SUPER + 1-6` | Switch workspace |
| `SUPER + SHIFT + 1-6` | Move to workspace |
| `Print` | Screenshot (area) |
| `SHIFT + Print` | Screenshot (full screen) |
| `SUPER + Print` | Screenshot and archive |
| `SUPER + C` | Clipboard history |
| `SUPER + F` | Fullscreen |
| `SUPER + N` | Pin window |
| `SUPER + T` | Toggle tiled |
| `SUPER + SHIFT + L` | Lock screen |
| `SUPER + SHIFT + M` | Exit Hyprland |

### Waybar
- UNION logo (â—‰âŠ•â—‰) with facility tooltip
- "UNION // Ð“Ð˜Ð¡Ð¡" identifier
- Workspace dots in center with name tooltips
- CPU, RAM, Temperature, Network, Audio, Battery, Clock, Tray
- Warning/critical color states
- Blink animation on critical alerts
- Technical separators (â”‚, Â·)

### Terminal
- Dark blue-gray background (#1a1d23)
- Cold off-white foreground (#c8cdd5)
- 16-color palette matching UNION theme
- 95% background opacity
- 4px window padding
- Block cursor (no blink)
- Powerline tab bar
- Selection highlight
- URL highlight in blue
- Copy on select
- Scrollback 10000 lines
- No audio bell
- Startup banner script
- Facility/terminal identification

### Launcher
- Dark background matching theme
- Red prompt badge
- "SEARCH ARCHIVES..." placeholder
- 2-column app grid
- Papirus icon support
- Custom display names (RESEARCH, EXECUTE, ARCHIVE, CALCULATOR, REMOTE)
- Hover highlight
- Selected state styling
- 42% window width
- Custom scrollbar

### Notifications
- Dark notification background
- Border color by type (system/comms/audio/optical/application/transfer/warning)
- 360x150px size
- 5000ms timeout (critical: no auto-dismiss)
- Top-right anchor
- JetBrains Mono 10px font
- Group by app name
- Urgency color coding
- Action border styling

### Scripts
- `union-login` â€” Terminal startup banner with animated status
- `union-logo` â€” 7 ASCII art sizes (large, medium, small, boot, status, classified, facility)
- `union-wallpaper` â€” Workspace auto-switch wallpaper system
- `union-workspace` â€” Dot indicator display
- `union-status` â€” System status panel
- `union-notify` â€” Themed notifications with 17+ presets:
  - Startup/Shutdown
  - Headphones connected/disconnected
  - Volume/Brightness changes
  - App launch/close
  - Screenshot
  - Workspace change
  - Screen lock
  - Battery low/warning
  - Network connected/disconnected
  - Bluetooth connected/disconnected

### Installation
- `install.sh` with dependency checking
- Timestamped config backups
- `uninstall.sh` with cleanup
- `--install/--uninstall/--backup/--restore` modes
- Shell integration (optional login banner)

---

## DEPENDENCIES

### Required

```bash
sudo pacman -S hyprland waybar kitty rofi-wayland mako swww starship jq \
  grimblast-git brightnessctl wireplumber xdg-desktop-portal-hyprland polkit-gnome
```

### Optional (recommended)

```bash
sudo pacman -S fastfetch papirus-icon-theme ttf-jetbrains-mono-nerd \
  cliphist swaylock swayidle grim slurp wl-clipboard nm-applet blueman
```

---

## INSTALLATION

```bash
# Clone the repository
git clone https://github.com/s5xv/union-theme.git
cd union-theme

# Make installer executable
chmod +x install.sh

# Run installer
./install.sh --install
```

The installer will:
1. Check for required dependencies
2. Create timestamped backups of existing configs
3. Install all theme files to `~/.config/`
4. Install scripts to `/usr/local/bin/`
5. Set up wallpaper directory

### Install Options

```bash
./install.sh --install     # Full installation
./install.sh --backup      # Backup current configs only
./install.sh --uninstall   # Remove UNION theme
./install.sh --help        # Show all options
```

---

## WORKSPACES

The theme uses 6 workspaces, each with its own name and wallpaper:

| # | Name | Color | Wallpaper |
|---|------|-------|-----------|
| 1 | ARCHIVE | Red | archive.jpg |
| 2 | RESEARCH | Blue | research.jpg |
| 3 | ORBITAL | Green | orbital.jpg |
| 4 | LUNAR | Amber | lunar.jpg |
| 5 | DEEP SPACE | Violet | deep-space.jpg |
| 6 | CONTROL | Cyan | control.jpg |

Workspace indicators appear as dots in Waybar:
- `â—` Active workspace
- `â—‰` Workspace with windows
- `â—‹` Empty workspace

---

## WALLPAPER SETUP

Wallpapers are stored in `~/Pictures/union/`. Add your own images:

```bash
# Expected files:
~/Pictures/union/archive.jpg
~/Pictures/union/research.jpg
~/Pictures/union/orbital.jpg
~/Pictures/union/lunar.jpg
~/Pictures/union/deep-space.jpg
~/Pictures/union/control.jpg
```

### Auto-switching wallpapers

```bash
union-wallpaper --init     # Create directory with placeholders
union-wallpaper --set 3    # Manually set workspace 3 wallpaper
union-wallpaper --list     # Check wallpaper status
```

To enable automatic switching, add to your Hyprland config:

```
exec-once = while true; do union-wallpaper --cycle; sleep 1; done
```

---

## CUSTOMIZATION

### Change Colors

Edit `colors/palette.conf` to modify the color scheme.

### Change Workspace Names

Edit the workspace names in:
- `hypr/hyprland.conf` â€” Workspace comments
- `waybar/config.jsonc` â€” Tooltip format
- `scripts/union-workspace` â€” `WS_NAMES` array

### Disable Startup ASCII

```bash
# Option 1: Edit shell config
# Comment out or remove "union-login" from ~/.bashrc or ~/.zshrc

# Option 2: Use environment variable
export UNION_LOGIN_BANNER=0
```

### Disable Notifications

```bash
export UNION_NOTIFY_ENABLED=0
```

### Change Terminal Appearance

Edit `kitty/kitty.conf`:
- `background_opacity` â€” Transparency level
- `font_size` â€” Text size
- Color values in the color scheme section

### Change Keyboard Layout

The theme defaults to US layout with Arabic toggle via `SUPER+Space`. To change:
- Edit `input:kb_layout` in `hypr/hyprland.conf`
- Edit `input:kb_options` for toggle method

---

## FICTIONAL LORE

**DISCLAIMER: This is entirely fictional. UNION does not exist.**

### Organization Timeline

| Year | Event |
|------|-------|
| 1963 | State Institute established |
| 1967 | Orbital Research Directorate established |
| 1971 | Classified orbital laboratory program begins |
| 1976 | Lunar Research Division established |
| 1981 | Deep-Space Communications Project begins |
| 1986 | Special Nuclear Research Facility expanded |
| 1991 | Institute officially dissolved |

### Active Projects

- **PROJECT-014** â€” Orbital Laboratory
- **PROJECT-027** â€” Lunar Survey
- **PROJECT-041** â€” Deep-Space Probe
- **PROJECT-073** â€” Nuclear Propulsion
- **PROJECT-â–ˆâ–ˆâ–ˆ** â€” Classified

### Facility Details

- **Designation:** FACILITY 04
- **Directorate:** ORBITAL RESEARCH
- **Division:** DEEP-SPACE COMMUNICATIONS
- **Terminal:** 7B-114
- **Serial:** UN-04-7B-114

---

## TROUBLESHOOTING

### Waybar not showing

```bash
waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css
```

### Notifications not working

```bash
makoctl status
makoctl invoke --summary "Test" --body "UNION system test"
```

### Wallpaper not changing

```bash
swww-daemon &
union-wallpaper --set 1
```

### Fonts not rendering

```bash
sudo pacman -S ttf-jetbrains-mono-nerd
fc-cache -fv
```

### Arabic keyboard not working

```bash
# Install Arabic layout
sudo pacman -S xorg-xkb-utils

# Test layout
setxkbmap -layout us,ara -option grp:alt_shift_toggle
```

---

## FILE STRUCTURE

```
union-theme/
â”œâ”€â”€ README.md
â”œâ”€â”€ install.sh
â”œâ”€â”€ uninstall.sh
â”œâ”€â”€ hypr/
â”‚   â””â”€â”€ hyprland.conf
â”œâ”€â”€ waybar/
â”‚   â”œâ”€â”€ config.jsonc
â”‚   â””â”€â”€ style.css
â”œâ”€â”€ kitty/
â”‚   â””â”€â”€ kitty.conf
â”œâ”€â”€ starship/
â”‚   â””â”€â”€ starship.toml
â”œâ”€â”€ rofi/
â”‚   â”œâ”€â”€ config.rasi
â”‚   â””â”€â”€ union.rasi
â”œâ”€â”€ mako/
â”‚   â””â”€â”€ config
â”œâ”€â”€ scripts/
â”‚   â”œâ”€â”€ union-login
â”‚   â”œâ”€â”€ union-logo
â”‚   â”œâ”€â”€ union-wallpaper
â”‚   â”œâ”€â”€ union-workspace
â”‚   â”œâ”€â”€ union-status
â”‚   â””â”€â”€ union-notify
â”œâ”€â”€ ascii/
â”‚   â”œâ”€â”€ union-large.txt
â”‚   â”œâ”€â”€ union-medium.txt
â”‚   â”œâ”€â”€ union-small.txt
â”‚   â”œâ”€â”€ union-boot.txt
â”‚   â”œâ”€â”€ union-status.txt
â”‚   â”œâ”€â”€ union-classified.txt
â”‚   â””â”€â”€ union-facility.txt
â”œâ”€â”€ colors/
â”‚   â””â”€â”€ palette.conf
â”œâ”€â”€ fastfetch/
â”‚   â”œâ”€â”€ config.jsonc
â”‚   â””â”€â”€ README.md
â”œâ”€â”€ wallpapers/
â”‚   â””â”€â”€ README.md
â””â”€â”€ assets/
    â””â”€â”€ README.md
```

---

## UNINSTALL

```bash
./install.sh --uninstall
```

Or manually:

```bash
rm -rf ~/.config/hypr
rm -rf ~/.config/waybar
rm -rf ~/.config/kitty
rm -f ~/.config/starship.toml
rm -rf ~/.config/rofi
rm -rf ~/.config/mako
rm -rf ~/.config/union
rm -f /usr/local/bin/union-*
```

---

## CREDITS

- **Hyprland** â€” https://hyprland.org
- **Waybar** â€” https://github.com/Alexays/Waybar
- **Kitty** â€” https://sw.kovidgoyal.net/kitty/
- **Starship** â€” https://starship.rs
- **Rofi** â€” https://github.com/DaveDavenport/rofi
- **Mako** â€” https://github.com/emersion/mako

---

## LICENSE

MIT License

Copyright (c) 2026 UNION Theme

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
