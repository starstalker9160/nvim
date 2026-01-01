return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status")

        local colours = {
            blue = "#65D1FF",
            green = "#3EFFDC",
            violet = "#FF61EF",
            yellow = "#FFDA7B",
            red = "#FF4A4A",
            fg = "#c3ccdc",
            bg = "#112638",
            inactive_bg = "#2c3043",
        }

        local my_lualine_theme = {
            normal = {
                a = { bg = colours.blue, fg = colours.bg, gui = "bold" },
                b = { bg = colours.bg, fg = colours.fg },
                c = { bg = colours.bg, fg = colours.fg },
            },
            insert = {
                a = { bg = colours.green, fg = colours.bg, gui = "bold" },
                b = { bg = colours.bg, fg = colours.fg },
                c = { bg = colours.bg, fg = colours.fg },
            },
            visual = {
                a = { bg = colours.violet, fg = colours.bg, gui = "bold" },
                b = { bg = colours.bg, fg = colours.fg },
                c = { bg = colours.bg, fg = colours.fg },
            },
            command = {
                a = { bg = colours.yellow, fg = colours.bg, gui = "bold" },
                b = { bg = colours.bg, fg = colours.fg },
                c = { bg = colours.bg, fg = colours.fg },
            },
            replace = {
                a = { bg = colours.red, fg = colours.bg, gui = "bold" },
                b = { bg = colours.bg, fg = colours.fg },
                c = { bg = colours.bg, fg = colours.fg },
            },
            inactive = {
                a = { bg = colours.inactive_bg, fg = colours.semilightgray, gui = "bold" },
                b = { bg = colours.inactive_bg, fg = colours.semilightgray },
                c = { bg = colours.inactive_bg, fg = colours.semilightgray },
            },
        }

        lualine.setup({
            options = {
                theme = my_lualine_theme,
            },
            sections = {
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })
    end,
}
