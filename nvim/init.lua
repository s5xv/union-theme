-- â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•
-- UNION THEME â€” NEOVIM CONFIGURATION
-- Unified National Institute for Orbital and Nuclear Research
-- Facility 04 â€” Terminal 7B-114
-- Document: UN-04-NVM-001  |  Classification: RESTRICTED
-- â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•â•

-- â”€â”€â”€ OPTIONS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.undofile = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.shortmess:append("W")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- â”€â”€â”€ UI â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
vim.opt.fillchars = { eob = " ", vert = "â”‚", horiz = "â”€", verthoriz = "â”¼", horizup = "â”´", horizdown = "â”¬", vertleft = "â”¤", vertright = "â”œ", fold = "Â·" }

-- â”€â”€â”€ KEYMAPS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local map = vim.keymap.set

-- Better navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Buffer navigation
map("n", "<S-h>", "<cmd>bprevious<CR>")
map("n", "<S-l>", "<cmd>bnext<CR>")
map("n", "<leader>bd", "<cmd>bdelete<CR>")

-- Window management
map("n", "<leader>v", "<cmd>vsplit<CR>")
map("n", "<leader>s", "<cmd>split<CR>")
map("n", "<leader>q", "<cmd>close<CR>")
map("n", "<leader>Q", "<cmd>qa!<CR>")

-- Clear search
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- File explorer
map("n", "<leader>e", "<cmd>Explore<CR>")

-- Save/Quit
map("n", "<leader>w", "<cmd>w<CR>")
map("n", "<leader>x", "<cmd>wq<CR>")

-- Quick actions
map("n", "<leader>/", "<cmd>nohlsearch<CR>")
map("n", "<leader>:", "<cmd>Telescope commands<CR>")

-- â”€â”€â”€ UNION COLORS â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
local colors = {
    bg = "#1a1d23",
    bg_alt = "#22262e",
    surface = "#2a2e37",
    fg = "#c8cdd5",
    fg_dim = "#8891a0",
    fg_muted = "#5c6370",
    red = "#b85450",
    blue = "#5e81ac",
    green = "#6a9f78",
    amber = "#d4a04a",
    cyan = "#5e9fb0",
    violet = "#8b7bab",
    border = "#3d4250",
}

-- Statusline
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("hi StatusLine guibg=" .. colors.bg .. " guifg=" .. colors.fg_dim)
        vim.cmd("hi StatusLineNC guibg=" .. colors.bg .. " guifg=" .. colors.fg_muted)
    end
})

vim.opt.statusline = " "
    .. "%#StatusLine#"
    .. "â—‰âŠ•â—‰ "
    .. "%f "
    .. "%m%r"
    .. "%="
    .. "ENC:%{&fileencoding?&fileencoding:&encoding} "
    .. "TYPE:%{&filetype} "
    .. "Ln:%l/%L Col:%c "
    .. "%% "
    .. "%#StatusLine#"

-- Highlight colors
vim.cmd("highlight CursorLine guibg=" .. colors.surface)
vim.cmd("highlight LineNr guifg=" .. colors.fg_muted)
vim.cmd("highlight CursorLineNr guifg=" .. colors.red)
vim.cmd("highlight Visual guibg=" .. colors.surface)
vim.cmd("highlight Search guibg=" .. colors.amber .. " guifg=" .. colors.bg)
vim.cmd("highlight IncSearch guibg=" .. colors.red .. " guifg=" .. colors.bg)
vim.cmd("highlight MatchParen guibg=" .. colors.surface .. " guifg=" .. colors.amber)
vim.cmd("highlight Pmenu guibg=" .. colors.bg_alt .. " guifg=" .. colors.fg)
vim.cmd("highlight PmenuSel guibg=" .. colors.surface .. " guifg=" .. colors.fg)
vim.cmd("highlight SignColumn guibg=" .. colors.bg)
vim.cmd("highlight VertSplit guifg=" .. colors.border)
vim.cmd("highlight WinSeparator guifg=" .. colors.border)
