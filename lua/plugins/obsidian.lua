return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local obsidian = require("obsidian")
		
		obsidian.setup({
			workspaces = {
				{
					name = "notes",
					path = "~/notes",
					overrides = {
						disable_frontmatter = true,
					}
				},
			},
			notes_subdir = "inbox",
			disable_frontmatter = false,
			note_frontmatter_func = function(note)
				return nil
			end,
			templates = {
				subdir = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M:%S",
			},
			mappings = {
				-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
				-- toggle check-boxes
				["<leader>ti"] = {
					action = function()
						return require("obsidian").util.toggle_checkbox()
					end,
					opts = { buffer = true },
				},
			},
			completion = {
				nvim_cmp = true,
				min_chars = 2,
			},
			ui = {
				enable = false,
				checkboxes = {},
				bullets = {},
			},
		})
	end
}
