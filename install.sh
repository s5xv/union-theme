#!/bin/bash
# ═══════════════════════════════════════════════════════════════════
# UNION THEME — INSTALLER
# Unified National Institute for Orbital and Nuclear Research
# Государственный институт специальных исследований
# Facility 04 — Terminal 7B-114
# ═══════════════════════════════════════════════════════════════════

set -euo pipefail

# ─── COLORS ──────────────────────────────────────────────────────
C_RED='\033[0;31m'
C_GREEN='\033[0;32m'
C_AMBER='\033[0;33m'
C_BLUE='\033[0;34m'
C_CYAN='\033[0;36m'
C_DIM='\033[2m'
C_BOLD='\033[1m'
C_RESET='\033[0m'
C_FG='\033[38;5;252m'

# ─── VARIABLES ───────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${HOME}/.config"
BACKUP_DIR="${HOME}/.config/union-backups"
TIMESTAMP=$(date '+%Y-%m-%d-%H%M%S')
BACKUP_PATH="${BACKUP_DIR}/${TIMESTAMP}"

# Required packages
REQUIRED_PACKAGES=(
    "hyprland"
    "waybar"
    "kitty"
    "rofi-wayland"
    "mako"
    "swww"
    "starship"
    "fastfetch"
    "jq"
    "grimblast-git"
    "brightnessctl"
    "wireplumber"
)

# Optional packages
OPTIONAL_PACKAGES=(
    "papirus-icon-theme"
    "ttf-jetbrains-mono-nerd"
    "cliphist"
)

# ─── FUNCTIONS ───────────────────────────────────────────────────

print_header() {
    echo ""
    echo -e "${C_RED}${C_BOLD}"
    echo "         ╔═══════════════════════════════════╗"
    echo "         ║                                   ║"
    echo "         ║        ◉ ─────────── ◉           ║"
    echo "         ║        │ ╲     ★   ╱ │           ║"
    echo "         ║        │   ╲  │  ╱   │           ║"
    echo "         ║   ◉ ───│─────⊕──────│─── ◉       ║"
    echo "         ║        │   ╱  │  ╲   │           ║"
    echo "         ║        │ ╱         ╲ │           ║"
    echo "         ║        ◉ ─────────── ◉           ║"
    echo "         ║                                   ║"
    echo "         ╠═══════════════════════════════════╣"
    echo "         ║     UNION THEME INSTALLER         ║"
    echo "         ║     FACILITY 04                   ║"
    echo "         ╚═══════════════════════════════════╝"
    echo -e "${C_RESET}"
    echo ""
}

log_info() {
    echo -e "${C_BLUE}[INFO]${C_RESET} $1"
}

log_success() {
    echo -e "${C_GREEN}[OK]${C_RESET}   $1"
}

log_warn() {
    echo -e "${C_AMBER}[WARN]${C_RESET} $1"
}

log_error() {
    echo -e "${C_RED}[ERR]${C_RESET}  $1"
}

check_command() {
    command -v "$1" &> /dev/null
}

detect_distro() {
    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        echo "$ID"
    else
        echo "unknown"
    fi
}

check_dependencies() {
    log_info "Checking dependencies..."
    echo ""

    local missing_required=()
    local missing_optional=()

    for pkg in "${REQUIRED_PACKAGES[@]}"; do
        if check_command "$pkg" || pacman -Qi "$pkg" &> /dev/null 2>&1; then
            log_success "$pkg"
        else
            log_warn "$pkg (MISSING - REQUIRED)"
            missing_required+=("$pkg")
        fi
    done

    echo ""

    for pkg in "${OPTIONAL_PACKAGES[@]}"; do
        if check_command "$pkg" || pacman -Qi "$pkg" &> /dev/null 2>&1; then
            log_success "$pkg"
        else
            log_warn "$pkg (MISSING - OPTIONAL)"
            missing_optional+=("$pkg")
        fi
    done

    echo ""

    if [[ ${#missing_required[@]} -gt 0 ]]; then
        log_error "Missing required packages:"
        for pkg in "${missing_required[@]}"; do
            echo "    - $pkg"
        done
        echo ""
        echo "Install with: sudo pacman -S ${missing_required[*]}"
        echo ""
        read -p "Continue anyway? [y/N] " -n 1 -r
        echo ""
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            exit 1
        fi
    fi

    if [[ ${#missing_optional[@]} -gt 0 ]]; then
        log_warn "Missing optional packages (some features may be limited):"
        for pkg in "${missing_optional[@]}"; do
            echo "    - $pkg"
        done
        echo ""
    fi
}

create_backup() {
    local target="$1"
    local backup_path="${BACKUP_PATH}/$(basename "$target")"

    if [[ -e "$target" ]]; then
        mkdir -p "$(dirname "$backup_path")"
        cp -r "$target" "$backup_path"
        log_info "Backed up: $target -> $backup_path"
    fi
}

backup_configs() {
    log_info "Creating backups..."
    mkdir -p "$BACKUP_PATH"

    create_backup "${CONFIG_DIR}/hypr"
    create_backup "${CONFIG_DIR}/waybar"
    create_backup "${CONFIG_DIR}/kitty"
    create_backup "${CONFIG_DIR}/starship.toml"
    create_backup "${CONFIG_DIR}/rofi"
    create_backup "${CONFIG_DIR}/mako"

    log_success "Backups created at: $BACKUP_PATH"
    echo ""
}

install_configs() {
    log_info "Installing UNION theme files..."
    echo ""

    # Hyprland
    mkdir -p "${CONFIG_DIR}/hypr"
    cp -r "${SCRIPT_DIR}/hypr/"* "${CONFIG_DIR}/hypr/"
    log_success "Hyprland configuration installed"

    # Waybar
    mkdir -p "${CONFIG_DIR}/waybar"
    cp "${SCRIPT_DIR}/waybar/"* "${CONFIG_DIR}/waybar/"
    log_success "Waybar configuration installed"

    # Kitty
    mkdir -p "${CONFIG_DIR}/kitty"
    cp "${SCRIPT_DIR}/kitty/"* "${CONFIG_DIR}/kitty/"
    log_success "Kitty terminal configuration installed"

    # Starship
    mkdir -p "${CONFIG_DIR}"
    cp "${SCRIPT_DIR}/starship/starship.toml" "${CONFIG_DIR}/starship.toml"
    log_success "Starship prompt configuration installed"

    # Rofi
    mkdir -p "${CONFIG_DIR}/rofi"
    cp "${SCRIPT_DIR}/rofi/"* "${CONFIG_DIR}/rofi/"
    log_success "Rofi launcher configuration installed"

    # Mako
    mkdir -p "${CONFIG_DIR}/mako"
    cp "${SCRIPT_DIR}/mako/"* "${CONFIG_DIR}/mako/"
    log_success "Mako notification configuration installed"

    echo ""
}

install_scripts() {
    log_info "Installing UNION scripts..."
    echo ""

    mkdir -p /usr/local/bin

    for script in "${SCRIPT_DIR}/scripts/"*; do
        if [[ -f "$script" ]]; then
            local name=$(basename "$script")
            cp "$script" "/usr/local/bin/union-${name#union-}"
            chmod +x "/usr/local/bin/union-${name#union-}"
            log_success "Installed: /usr/local/bin/union-${name#union-}"
        fi
    done

    echo ""
}

install_ascii() {
    log_info "Installing UNION ASCII art..."
    echo ""

    mkdir -p "${CONFIG_DIR}/union/ascii"
    cp "${SCRIPT_DIR}/ascii/"* "${CONFIG_DIR}/union/ascii/"
    log_success "ASCII art installed to: ${CONFIG_DIR}/union/ascii/"

    echo ""
}

setup_wallpapers() {
    log_info "Setting up wallpaper directory..."
    echo ""

    mkdir -p "${HOME}/Pictures/union"

    if ! check_command union-wallpaper; then
        log_warn "union-wallpaper not yet available, run after install"
    else
        union-wallpaper --init
    fi

    log_success "Wallpaper directory ready: ${HOME}/Pictures/union/"
    echo ""
}

enable_shell_integration() {
    log_info "Configuring shell integration..."
    echo ""

    local shell_rc=""

    if [[ -f "${HOME}/.bashrc" ]]; then
        shell_rc="${HOME}/.bashrc"
    elif [[ -f "${HOME}/.zshrc" ]]; then
        shell_rc="${HOME}/.zshrc"
    fi

    if [[ -n "$shell_rc" ]]; then
        if ! grep -q "union-login" "$shell_rc" 2>/dev/null; then
            echo "" >> "$shell_rc"
            echo "# UNION Theme — Terminal Login Banner" >> "$shell_rc"
            echo "# Remove the line below to disable startup banner" >> "$shell_rc"
            echo "# union-login" >> "$shell_rc"
            log_success "Shell integration added to: $shell_rc"
        else
            log_info "Shell integration already present in: $shell_rc"
        fi
    fi

    echo ""
}

print_post_install() {
    echo -e "${C_GREEN}${C_BOLD}"
    echo "╔═══════════════════════════════════════════════════════════════╗"
    echo "║                                                             ║"
    echo "║              UNION THEME INSTALLED SUCCESSFULLY              ║"
    echo "║                                                             ║"
    echo "║  FACILITY 04 — TERMINAL 7B-114                              ║"
    echo "║  STATUS: OPERATIONAL                                        ║"
    echo "║                                                             ║"
    echo "╚═══════════════════════════════════════════════════════════════╝"
    echo -e "${C_RESET}"
    echo ""
    echo "  Next steps:"
    echo "  ───────────"
    echo "  1. Add wallpapers to: ~/Pictures/union/"
    echo "     Expected files: archive.jpg, research.jpg, orbital.jpg,"
    echo "                     lunar.jpg, deep-space.jpg, control.jpg"
    echo ""
    echo "  2. Restart Hyprland or run:"
    echo "     hyprctl reload"
    echo ""
    echo "  3. Optional: Enable terminal startup banner:"
    echo "     Add to ~/.bashrc or ~/.zshrc:"
    echo "     union-login"
    echo ""
    echo "  4. Optional: Install JetBrains Mono Nerd Font:"
    echo "     sudo pacman -S ttf-jetbrains-mono-nerd"
    echo ""
    echo "  5. Optional: Install Papirus icons:"
    echo "     sudo pacman -S papirus-icon-theme"
    echo ""
    echo "  Backups: ${BACKUP_PATH}"
    echo ""
    echo "  Commands:"
    echo "    union-status     — System status display"
    echo "    union-logo       — ASCII logo display"
    echo "    union-wallpaper  — Wallpaper management"
    echo "    union-notify     — Notification system"
    echo "    union-workspace  — Workspace indicator"
    echo ""
}

# ─── MAIN ────────────────────────────────────────────────────────
main() {
    local mode="${1:-install}"

    case "$mode" in
        --install|install)
            print_header
            log_info "UNION Theme Installer"
            log_info "Target: Arch Linux + Hyprland"
            echo ""

            check_dependencies
            backup_configs
            install_configs
            install_scripts
            install_ascii
            setup_wallpapers
            enable_shell_integration
            print_post_install
            ;;
        --uninstall|uninstall)
            if [[ -f "${SCRIPT_DIR}/uninstall.sh" ]]; then
                bash "${SCRIPT_DIR}/uninstall.sh" "$@"
            else
                log_error "Uninstall script not found"
                exit 1
            fi
            ;;
        --backup|backup)
            print_header
            backup_configs
            log_success "Backup complete: $BACKUP_PATH"
            ;;
        --restore|restore)
            log_error "Restore not yet implemented"
            log_info "Manual restore: cp -r ${BACKUP_PATH}/* ${CONFIG_DIR}/"
            exit 1
            ;;
        --help|-h)
            echo "UNION Theme Installer"
            echo ""
            echo "Usage: $0 [OPTION]"
            echo ""
            echo "Options:"
            echo "  --install     Install UNION theme (default)"
            echo "  --uninstall   Remove UNION theme"
            echo "  --backup      Backup current configs"
            echo "  --restore     Restore from backup"
            echo "  --help        Show this help"
            ;;
        *)
            log_error "Unknown option: $mode"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
}

main "$@"
