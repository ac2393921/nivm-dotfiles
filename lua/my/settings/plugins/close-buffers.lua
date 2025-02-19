return {
  'kazhala/close-buffers.nvim',
  config = function()
    require('close_buffers').setup({
      filetype_ignore = {},  -- Filetype to ignore when running deletions
      file_glob_ignore = {},  -- File name glob pattern to ignore when running deletions (e.g. '*.md')
      file_regex_ignore = {}, -- File name regex pattern to ignore when running deletions (e.g. '.*[.]md')
      preserve_window_layout = { 'this', 'nameless' },  -- Types of deletion that should preserve the window layout
      next_buffer_cmd = nil,  -- Custom function to retrieve the next buffer when preserving window layout
    })
    vim.api.nvim_set_keymap(
      'n',
      '<leader>th',
      [[<CMD>lua require('close_buffers').delete({type = 'hidden'})<CR>]],
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      'n',
      '<leader>tu',
      [[<CMD>lua require('close_buffers').delete({type = 'nameless'})<CR>]],
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      'n',
      '<leader>tc',
      [[<CMD>lua require('close_buffers').delete({type = 'this'})<CR>]],
      { noremap = true, silent = true }
    )
    end
}