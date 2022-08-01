local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--Set up GO
require 'lspconfig'.gopls.setup{
	capabilities = capabilities,
	on_attach = function()
		vim.keymap.set("n","K", vim.lsp.buf.hover,{buffer=0})
		vim.keymap.set("n","gd", vim.lsp.buf.definition, {buffer=0})
		vim.keymap.set("n","gT", vim.lsp.buf.type_definition, {buffer=0})
		vim.keymap.set("n","gi", vim.lsp.buf.implementation, {buffer=0})
		vim.keymap.set("n"," dn", vim.diagnostic.goto_next, {buffer=0})
		vim.keymap.set("n"," dp", vim.diagnostic.goto_prev, {buffer=0})
		vim.keymap.set("n","<leader>r", vim.lsp.buf.rename, {buffer=0})
	end,
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		}
	},
}

--Set up Powershell
      require'lspconfig'.powershell_es.setup{
	--cmd = {'powershell', '-NoLogo', '-NoProfile', '-Command', "$PSES_BUNDLE_PATH/PowerShellEditorServices/Start-EditorServices.ps1", '-BundledModulesPath', "$PSES_BUNDLE_PATH", '-LogPath', "$SESSION_TEMP_PATH/logs.log", '-SessionDetailsPath', "$SESSION_TEMP_PATH/session.json", '-FeatureFlags', "@()", '-AdditionalModules', "@()", '-HostName', 'My Client', '-HostProfileId','myclient', '-HostVersion', '1.0.0', '-Stdio', '-LogLevel', 'Normal'  } 
	--cmd = {'powershell', '-NoLogo', '-NoProfile', '-Command', "C:/Users/a124129/OneDrive - AXAXL/Dev/Tools/PowerShellEditorServices/PowerShellEditorServices/Start-EditorServices.ps1"}
	capabilities = capabilities,
	on_attach = function()
		vim.keymap.set("n","K", vim.lsp.buf.hover,{buffer=0})
		vim.keymap.set("n","gd", vim.lsp.buf.definition, {buffer=0})
		vim.keymap.set("n","gT", vim.lsp.buf.type_definition, {buffer=0})
		vim.keymap.set("n","gi", vim.lsp.buf.implementation, {buffer=0})
		vim.keymap.set("n"," df", vim.diagnostic.goto_next, {buffer=0})
		vim.keymap.set("n"," dp", vim.diagnostic.goto_prev, {buffer=0})
		vim.keymap.set("n","<leader>r", vim.lsp.buf.rename, {buffer=0})
	end,
	bundle_path = 'C:/Dev/Tools/PowerShellEditorServices',
	shell = 'powershell.exe'
      }

  --set completeopt=menu,menuone,noselect
  vim.opt.completeopt={"menu", "menuone", "noselect"}

    -- Setup nvim-cmp.
    local cmp = require'cmp'

    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
      }, {
        { name = 'buffer' },
      })
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })

