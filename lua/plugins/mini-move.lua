return {
	'echasnovski/mini.move',
	event = 'VeryLazy',
	config = function()
		require('mini.move').setup({
			mappings = {
				left = nil,
				right = nil,
				down = '<c-d>',
				up = '<c-e>',

				line_left = nil,
				line_right = nil,
				line_down = nil,
				line_up = nil,
			},
		})
	end,
}
