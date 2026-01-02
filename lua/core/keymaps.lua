vim.g.mapleader = " "

-- number stuff
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- search clearing
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank into clipboard" })

-- exiting neovim
vim.keymap.set("n", "<leader>qa", ":qa<CR>", { desc = "Quit nvim (close all panes)" })
vim.keymap.set("n", "<leader>qw", ":wq<CR>", { desc = "Write and quit" })
vim.keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "Exit without saving (get me out of here)" })

-- split windows stuff
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close active split" })

-- tab stuff
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab"})
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab"})
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab (right)"})
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab (left)"})
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab"})
