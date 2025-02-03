require('ian.remap')
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme habamax]])
vim.opt.scrolloff = 8
vim.opt.updatetime = 50


--godot stuff
if vim.fn.filereadable(vim.fn.getcwd() .. '/project.godot') == 1 then
	local addr = './godot.pipe'
	if vim.fn.has 'win32' == 1 then
		addr = '127.0.0.1:6004'
	end
	vim.fn.serverstart(addr)
end
