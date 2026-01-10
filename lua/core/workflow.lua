------------------
-- second brain --
------------------

vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<CR> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<CR> :nohl<CR>", { desc = "Insert template" })
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<CR> :nohl<CR>", { desc = "Format title (have cursor on title)" })
