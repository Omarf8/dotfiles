return { -- Parser
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {"lua", "c", "cpp", "python",
				"javascript", "typescript", "tsx", "html", "css" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
