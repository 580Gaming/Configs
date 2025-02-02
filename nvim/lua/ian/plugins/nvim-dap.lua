return {
	"mfussenegger/nvim-dap",

	dependencies = {
		"rcarriga/nvim-dap-ui",
		"jay-babu/mason-nvim-dap.nvim"},
	config = function ()
		local dap = require "dap"
	
	dap.adapters.godot = {
		type = 'server',
		host = '127.0.0.1',
		port = '6006'
	}
		
	end}
