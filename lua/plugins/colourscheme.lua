return {
	-- Tokyonight
    -- {
    --     "folke/tokyonight.nvim",
    --     priority = 1000,
    --     config = function()
    --         local bg_dark = "#011423"
    --         local bg_highlight = "#143652"
    --         local bg_visual = "#275378"
    --         local fg = "#CBE0F0"
    --         local fg_dark = "#B4D0E9"
    --         local fg_gutter = "#627E97"
    --         local border = "#547998"
    --
    --         require("tokyonight").setup({
    --             style = "night",
    --             on_colors = function(colors)
    --                 colors.bg_highlight = bg_highlight
    --                 colors.bg_popup = bg_dark
    --                 colors.bg_statusline = bg_dark
    --                 colors.bg_visual = bg_visual
    --                 colors.border = border
    --                 colors.fg = fg
    --                 colors.fg_dark = fg_dark
    --                 colors.fg_float = fg
    --                 colors.fg_gutter = fg_gutter
    --                 colors.fg_sidebar = fg_dark
    --             end,
    --         })
    --
    --         vim.cmd([[colorscheme tokyonight]])
    --     end
    -- }
	
	-- Tokyodark
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			styles = {
				comments = { italic = true }, -- style for comments
				keywords = { italic = false }, -- style for keywords
				identifiers = { italic = true }, -- style for identifiers
				functions = {}, -- style for functions
				variables = { italic = false },
			},
			custom_highlights = {} or function(highlights, palette) return {} end,
			custom_palette = {} or function(palette) return {} end,
			terminal_colors = true
		},
		config = function(_, opts)
			require("tokyodark").setup(opts)
			vim.cmd [[colorscheme tokyodark]]
		end,
	}
}
