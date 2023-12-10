-----------------------------------------------------------
-- Completions
-----------------------------------------------------------
  -- Set up nvim-cmp.
local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")
cmp.setup({
  window = {
    completion = { border = 'rounded', scrollbar = '║', },
    documentation = { border = nil, scrollbar = '', },
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
 -- configure how nvim-cmp interacts with snippet engine
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "path" },
    { name = "buffer" },
  }),
 -- configure lspkind for vs-code like pictograms in completion menu
  formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = "...",
    }),
  },
});
