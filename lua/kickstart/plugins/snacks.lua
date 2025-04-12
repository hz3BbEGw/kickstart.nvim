return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,

		---@type snacks.Config
		opts = {
			bigfile = { enabled = true },
			image = { enabled = true },
			notify = { enabled = true },
			indent = { 
				enabled = true,
				animate = { enabled = false }
			},
			notifier = {
				enabled = true,
				timeout = 2500,
			},
			animate = { enabled = false },
			styles = {
				notification = {
					wo = { wrap = true } -- Wrap notifications
				}
			}
		},

		keys = {
			-- Other
			{ "<leader>n",  function() Snacks.notifier.show_history() end, desc = "Notification History" },
			{ "<leader>g", function() Snacks.lazygit() end, desc = "Lazy[g]it" },
			{ "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
		},
	}
}
