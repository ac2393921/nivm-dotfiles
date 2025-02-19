return {
  'sindrets/diffview.nvim',
  config = function()
    require("diffview").setup()
    vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { noremap = true, silent = true })
  end
}