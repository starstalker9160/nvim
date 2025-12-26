return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        on_attach = function(bufnr)
            local gs = package.loaded.gitsigns

            -- Navigation
            vim.keymap.set("n", "]h", gs.next_hunk, { buffer = bufnr, desc = "Next Hunk" })
            vim.keymap.set("n", "[h", gs.prev_hunk, { buffer = bufnr, desc = "Prev Hunk" })

            -- Actions
            vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr, desc = "Stage hunk" })
            vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr, desc = "Reset hunk" })
            vim.keymap.set("v", "<leader>hs", function()
                gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { buffer = bufnr, desc = "Stage hunk" })
            vim.keymap.set("v", "<leader>hr", function()
                gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { buffer = bufnr, desc = "Reset hunk" })

            vim.keymap.set("n", "<leader>hS", gs.stage_buffer, { buffer = bufnr, desc = "Stage buffer" })
            vim.keymap.set("n", "<leader>hR", gs.reset_buffer, { buffer = bufnr, desc = "Reset buffer" })

            vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk, { buffer = bufnr, desc = "Undo stage hunk" })

            vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr, desc = "Preview hunk" })

            vim.keymap.set("n", "<leader>hb", function()
                gs.blame_line({ full = true })
            end, { buffer = bufnr, desc = "Blame line" })
            vim.keymap.set("n", "<leader>hB", gs.toggle_current_line_blame, { buffer = bufnr, desc = "Toggle line blame" })

            vim.keymap.set("n", "<leader>hd", gs.diffthis, { buffer = bufnr, desc = "Diff this" })
            vim.keymap.set("n", "<leader>hD", function()
                gs.diffthis("~")
            end, { buffer = bufnr, desc = "Diff this ~" })

            -- Text object
            vim.keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", {
                buffer = bufnr,
                desc = "Gitsigns select hunk",
            })
        end,
    },
}
