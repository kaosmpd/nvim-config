local lsp = require("lspconfig")
local fmt = require("lsp-format")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
fmt.setup {}
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.tsserver.setup {
  capabilities = capabilities,
	on_attach = fmt.on_attach,
  -- root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", "jsconfig.json"),
	root_dir = vim.loop.cwd
}
lsp.emmet_ls.setup({
	capabilities = capabilities,
	on_attach = fmt.on_attach,
	filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css' },
})


-- lsp.gopls.setup {}
-- vim.cmd [[
-- let g:go_def_mode='gopls'
-- let g:go_info_mode='gopls'
-- ]]

lsp.volar.setup {
  capabilities = capabilities,
	on_attach = fmt.on_attach,
  init_options = {
    typescript = {
    --   serverPath = "/Users/nhhao/.config/yarn/global/node_modules/typescript/lib/tsserverlibrary.js"
		  serverPath = "/Users/kaos/Library/pnpm/global/5/node_modules/typescript/lib/tsserverlibrary.js"
    },
  },
}

lsp.svelte.setup({
	on_attach = fmt.on_attach
})

lsp.tailwindcss.setup {
  capabilities = capabilities,
	on_attach = fmt.on_attach,
	root_dir = require("lspconfig").util.root_pattern('tailwind.config.js', 'tailwind.config.ts', 'unocss.config.js', 'unocss.config.ts')
}

lsp.dartls.setup {
  capabilities = capabilities,
	on_attach = fmt.on_attach,
}

-- lsp.rust_analyzer.setup({})
-- vim.cmd("let g:rustfmt_autosave = 1")
