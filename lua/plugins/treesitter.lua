return {
	--treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				auto_install = true,
				ensure_installed = { "javascript", "html", "css", "rust", "vue" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
