local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

require("toggleterm").setup {}

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  hidden = true
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "tm", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

local htop = Terminal:new({ cmd = "htop", direction = "float", hidden = true })

function _HTOP_TOGGLE()
  htop:toggle()
end

vim.api.nvim_set_keymap("n", "ht", "<cmd>lua _HTOP_TOGGLE()<CR>", { noremap = true, silent = true })

local lazydocker = Terminal:new({ cmd = "lazydocker", direction = "float", hidden = true })
function _LAZYDOCKER_TOGGLE()
  lazydocker:toggle()
end

vim.api.nvim_set_keymap("n", "ld", "<cmd>lua _LAZYDOCKER_TOGGLE()<CR>", { noremap = true, silent = true })
