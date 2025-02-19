-- Masonでインストールするツールを指定
local ensure_installed = {
  'stylua', -- Luaのフォーマッタ
  'prettier', -- JS/TSのフォーマッタ
  'ruff', -- Pythonの言語サーバー
  'rust-analyzer', -- Rustの言語サーバー
}

return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  config = function()
    require('mason-tool-installer').setup { ensure_installed = ensure_installed }
  end,
}