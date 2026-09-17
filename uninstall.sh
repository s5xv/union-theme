#!/bin/bash
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
# UNION THEME â€” UNINSTALLER
# Unified National Institute for Orbital and Nuclear Research
# Ð“Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ð¸Ð½ÑÑ‚Ð¸Ñ‚ÑƒÑ‚ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¸ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ð¹
# Facility 04 â€” Terminal 7B-114
# â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•

set -euo pipefail

# â”€â”€â”€ COLORS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
C_RED='\033[0;31m'
C_GREEN='\033[0;32m'
C_AMBER='\033[0;33m'
C_BLUE='\033[0;34m'
C_DIM='\033[2m'
C_BOLD='\033[1m'
C_RESET='\033[0m'

# â”€â”€â”€ VARIABLES â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${HOME}/.config"

# â”€â”€â”€ FUNCTIONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€

print_header() {
    echo ""
    echo -e "${C_RED}${C_BOLD}"
    echo "         â•”â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•—"
    echo "         â•‘     UNION THEME UNINSTALLER        â•‘"
    echo "         â•‘     FACILITY 04                    â•‘"
    echo "         â•šâ•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•"
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

remove_file() {
    local target="$1"
    if [[ -e "$target" ]]; then
        rm -rf "$target"
        log_success "Removed: $target"
    else
        log_info "Not found (skipped): $target"
    fi
}

confirm() {
    read -p "Are you sure you want to remove UNION theme? [y/N] " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        log_info "Uninstall cancelled."
        exit 0
    fi
}

# â”€â”€â”€ MAIN â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
main() {
    print_header

    confirm

    log_info "Removing UNION theme files..."
    echo ""

    # Remove configurations
    remove_file "${CONFIG_DIR}/hypr"
    remove_file "${CONFIG_DIR}/waybar"
    remove_file "${CONFIG_DIR}/kitty"
    remove_file "${CONFIG_DIR}/starship.toml"
    remove_file "${CONFIG_DIR}/rofi"
    remove_file "${CONFIG_DIR}/mako"
    remove_file "${CONFIG_DIR}/union"

    # Remove scripts
    log_info "Removing scripts..."
    for script in /usr/local/bin/union-*; do
        if [[ -f "$script" ]]; then
            rm -f "$script"
            log_success "Removed: $script"
        fi
    done

    # Remove wallpaper directory (only if empty)
    if [[ -d "${HOME}/Pictures/union" ]]; then
        if [[ -z "$(ls -A "${HOME}/Pictures/union" 2>/dev/null)" ]]; then
            rmdir "${HOME}/Pictures/union"
            log_success "Removed empty wallpaper directory"
        else
            log_warn "Wallpaper directory not empty (skipped): ~/Pictures/union/"
            log_info "Manual removal: rm -rf ~/Pictures/union/"
        fi
    fi

    # Remove shell integration
    for rc in "${HOME}/.bashrc" "${HOME}/.zshrc"; do
        if [[ -f "$rc" ]] && grep -q "union-login" "$rc" 2>/dev/null; then
            sed -i '/^# UNION Theme â€” Terminal Login Banner$/d' "$rc"
            sed -i '/^# Remove the line below to disable startup banner$/d' "$rc"
            sed -i '/^# union-login$/d' "$rc"
            log_success "Removed shell integration from: $rc"
        fi
    done

    echo ""
    log_success "UNION theme uninstalled."
    echo ""
    echo "  Note: Backups remain at:"
    echo "    ~/.config/union-backups/"
    echo ""
    echo "  Wallpaper directory:"
    echo "    ~/Pictures/union/ (if not empty)"
    echo ""
}

main "$@"
