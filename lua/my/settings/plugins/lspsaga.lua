return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  },
  keys = {
    {mode = "n", "<leader>lh", "<cmd>Lspsaga hover_doc<CR>", desc = "hover documentation"},
    {mode = "n", "<leader>lf", "<cmd>Lspsaga finder<CR>", desc = "lspsaga finder"},
    {mode = "n", "<leader>lr", "<cmd>Lspsaga rename<CR>", desc = "lspsaga rename"},
    {mode = "n", "<leader>lto", "<cmd>Lspsaga open_floaterm<CR>", desc = "lspsaga open_floaterm"},
    {mode = "n", "<leader>ltc", "<cmd>Lspsaga close_floaterm<CR>", desc = "lspsaga close_floaterm"},
    {mode = "n", "<leader>lca", "<cmd>Lspsaga code_action<CR>", desc = "lspsaga code_action"},
    {mode = "n", "<leader>lsd", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "lspsaga show_line_diagnostics"},
    {mode = "n", "<leader>lpd", "<cmd>Lspsaga peek_definition<CR>", desc = "lspsaga peek_definition"},
    {mode = "n", "<leader>l[", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "lspsaga diagnostic_jump_prev"},
    {mode = "n", "<leaaer>l]", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "lspsaga diagnostic_jump_next"},
  },
  config = function ()
    require('lspsaga').setup({
      symbol_in_winbar = {
        enable = true,
      },
      ui = {
        border = "single",
        title = false,
      },
      lightbulb = {
        enable = true,
      },
      code_action_lightbulb = {
        enable = true,
      },
      show_outline = {
        win_width = 50,
        auto_preview = false,
      },
    })
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false
    end
  end,
}