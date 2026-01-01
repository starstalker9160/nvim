return {
    "numToStr/Comment.nvim",
    opts = {},
    keys = {
        {
            "<C-_>",
            function()
                require("Comment.api").toggle.linewise.current()
            end,
            mode = "n",
            desc = "Toggle comment (line)",
        },
        {
            "<C-_>",
            function()
                local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
                vim.api.nvim_feedkeys(esc, "nx", false)
                require("Comment.api").toggle.linewise(vim.fn.visualmode())
            end,
            mode = "x",
            desc = "Toggle comment (selection)",
        },
    },
}
