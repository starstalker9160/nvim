local lazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazyPath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim", "--branch=stable", lazyPath
	})
end

vim.opt.rtp:prepend(lazyPath)

require("lazy").setup({
	{import = "plugins"},
    {
      dir = "~/.config/nvim/lua/core",  -- Load a local directory as a plugin
      name = "core-colours",           -- Provide a unique name for the plugin
      config = function()
          require("core.colours").setup()
      end,
    },
})
