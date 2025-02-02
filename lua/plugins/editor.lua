return {
  {
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
      win = {
        width = { min = 4, max = 60 },
        height = { min = 4, max = 25 },
        col = math.huge,
        row = math.huge,
      },
		},
		keys = {
			{
				"<Leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}

