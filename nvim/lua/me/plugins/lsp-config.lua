return {
        "williamboman/mason-lspconfig.nvim",
config = function ()

     local gdscript_config = {
        capabilities = capabilities,
        settings = {},
      }
      if vim.fn.has 'win32' == 1 then
        -- Windows specific. Requires nmap installed (`winget install nmap`)
        gdscript_config['cmd'] = { 'ncat', 'localhost', os.getenv 'GDScript_Port' or '6005' }
      end
      require('lspconfig').gdscript.setup(gdscript_config)
    end,
  }

