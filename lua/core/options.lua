vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- tabs and indentation
opt.relativenumber = true
opt.shiftwidth = 4
opt.autoindent = true
opt.tabstop = 4

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true

opt.clipboard:append("unnamedplus")

-- splitting
opt.splitright = true
opt.splitbelow = true

opt.swapfile = false