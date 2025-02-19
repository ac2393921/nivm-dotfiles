return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("lspconfig").tsserver.setup({})
  end,
}
