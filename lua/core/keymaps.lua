vim.g.mapleader = " "

local keymap = vim.keymap

-- number stuff
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- split windows stuff
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leaders>sh", "<C-w>h", { desc = "Split horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close active split" })
