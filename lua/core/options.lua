vim.cmd("let g:netrw_liststyle = 3")

-- encoding
vim.opt.encoding = "utf-8"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indenting
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.tabstop = 4

-- text wrap (or rather, the lack there of)
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.clipboard:append("unnamedplus")

-- splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.swapfile = false

-- scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
