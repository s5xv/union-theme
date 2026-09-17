# UNION THEME

## Unified National Institute for Orbital and Nuclear Research
### Государственный институт специальных исследований

A complete Hyprland desktop environment theme for Arch Linux, designed to look like a classified Soviet scientific workstation from 1978–1988 that survived into the modern era and is now running Arch Linux + Hyprland.

---

## CONCEPT

UNION is a fictional secretive Soviet government scientific organization from an alternate Cold War timeline, focused on nuclear research, orbital science, lunar missions, deep-space exploration, spacecraft engineering, and advanced scientific computing.

The desktop should feel like an actual organization has existed for decades.

**Target aesthetic:** "Someone found a classified Soviet scientific workstation from 1984, restored it, and discovered that the original interface is now running Arch Linux and Hyprland."

---

## WHAT'S INCLUDED

| Component | Description |
|-----------|-------------|
| Hyprland | Window manager configuration with workspace system |
| Waybar | Status bar styled as scientific instrumentation |
| Kitty | Terminal with UNION color scheme |
| Starship | Shell prompt styled as scientific terminal |
| Rofi | Application launcher styled as classified interface |
| Mako | Notification daemon with institutional styling |
| Scripts | Login banner, logo display, wallpaper management |
| ASCII Art | Multiple versions of the UNION institutional emblem |

---

## SCREENSHOTS

```
┌─────────────────────────────────────────────────────────────────────────────┐
│ ◉⊕◉  UNION // ГИСС          ○ ○ ● ○ ○ ○     CPU 18% · MEM 42% · 14:32   │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│                    ◉ ─────────── ◉                                          │
│                    │ ╲     ★   ╱ │                                          │
│                    │   ╲  │  ╱   │                                          │
│               ◉ ───│─────⊕──────│─── ◉                                      │
│                    │   ╱  │  ╲   │                                          │
│                    │ ╱         ╲ │                                          │
│                    ◉ ─────────── ◉                                          │
│                                                                             │
│                    UNION // FACILITY 04                                     │
│                    EST. 1963                                                │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## DEPENDENCIES

### Required

```bash
sudo pacman -S hyprland waybar kitty rofi-wayland mako swww starship jq
```

### Optional (recommended)

```bash
sudo pacman -S fastfetch grimblast-git brightnessctl wireplumber
sudo pacman -S ttf-jetbrains-mono-nerd papirus-icon-theme
yay -S cliphist
```

---

## INSTALLATION

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/union-theme.git
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
- `●` Active workspace
- `◉` Workspace with windows
- `○` Empty workspace

---

## KEYBINDINGS

| Key | Action |
|-----|--------|
| `SUPER + Return` | Open terminal |
| `SUPER + Q` | Close window |
| `SUPER + Space` | Application launcher |
| `SUPER + V` | Toggle floating |
| `SUPER + E` | File manager |
| `SUPER + 1-6` | Switch workspace |
| `SUPER + SHIFT + 1-6` | Move window to workspace |
| `SUPER + h/j/k/l` | Focus left/down/up/right |
| `SUPER + SHIFT + h/j/k/l` | Move window left/down/up/right |
| `SUPER + CTRL + arrows` | Resize window |
| `Print` | Screenshot (area) |
| `SHIFT + Print` | Screenshot (full screen) |
| `SUPER + C` | Clipboard history |

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

The wallpaper script can automatically switch wallpapers based on active workspace:

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

Edit `colors/palette.conf` to modify the color scheme. All components reference these colors:

- `background` — Main background color
- `foreground` — Main text color
- `red` — Soviet red accent
- `blue` — Research blue accent
- `amber` — System amber accent
- `green` — Terminal green accent
- `cyan` — Instrument cyan accent

### Change Workspace Names

Edit the workspace names in:
- `hypr/hyprland.conf` — Workspace comments
- `waybar/config.jsonc` — Tooltip format
- `scripts/union-workspace` — `WS_NAMES` array

### Disable Startup ASCII

To disable the terminal startup banner:

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
- `background_opacity` — Transparency level
- `font_size` — Text size
- Color values in the color scheme section

---

## FICTIONAL LORE

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

- **PROJECT-014** — Orbital Laboratory
- **PROJECT-027** — Lunar Survey
- **PROJECT-041** — Deep-Space Probe
- **PROJECT-073** — Nuclear Propulsion
- **PROJECT-███** — Classified

---

## TROUBLESHOOTING

### Waybar not showing

```bash
waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css
```

### Notifications not working

```bash
# Check mako is running
makoctl status

# Test notification
makoctl invoke --summary "Test" --body "UNION system test"
```

### Wallpaper not changing

```bash
# Check swww is running
swww-daemon &

# Test manually
union-wallpaper --set 1
```

### Fonts not rendering

```bash
# Install JetBrains Mono Nerd Font
sudo pacman -S ttf-jetbrains-mono-nerd

# Rebuild font cache
fc-cache -fv
```

---

## FILE STRUCTURE

```
union-theme/
├── README.md
├── install.sh
├── uninstall.sh
├── hypr/
│   └── hyprland.conf
├── waybar/
│   ├── config.jsonc
│   └── style.css
├── kitty/
│   └── kitty.conf
├── starship/
│   └── starship.toml
├── rofi/
│   ├── config.rasi
│   └── union.rasi
├── mako/
│   └── config
├── scripts/
│   ├── union-login
│   ├── union-logo
│   ├── union-wallpaper
│   ├── union-workspace
│   ├── union-status
│   └── union-notify
├── ascii/
│   ├── union-large.txt
│   ├── union-medium.txt
│   ├── union-small.txt
│   ├── union-boot.txt
│   ├── union-status.txt
│   ├── union-classified.txt
│   └── union-facility.txt
├── colors/
│   └── palette.conf
├── wallpapers/
│   └── README.md
├── assets/
│   └── README.md
└── fastfetch/
    └── README.md
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

- **Hyprland** — https://hyprland.org
- **Waybar** — https://github.com/Alexays/Waybar
- **Kitty** — https://sw.kovidgoyal.net/kitty/
- **Starship** — https://starship.rs
- **Rofi** — https://github.com/DaveDavenport/rofi
- **Mako** — https://github.com/emersion/mako

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
