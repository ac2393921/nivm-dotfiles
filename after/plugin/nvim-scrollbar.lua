require("scrollbar").setup({
  show = true,
  show_in_active_only = false,
  set_highlights = true,
  folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
  max_lines = false, -- disables if no. of lines in buffer exceeds this
  handle = {
      text = " ",
      color = "#49B38E",
      cterm = nil,
      highlight = "CursorColumn",
      hide_if_all_visible = true, -- Hides handle if all lines are visible
  },
  marks = {
      Search = {
          text = { "-", "=" },
          priority = 0,
          color = "#FF8A18",
          cterm = nil,
          highlight = "Search",
      },
      Error = {
          text = { "-", "=" },
          priority = 1,
          color = "#FF8A18",
          cterm = nil,
          highlight = "DiagnosticVirtualTextError",
      },
      Warn = {
          text = { "-", "=" },
          priority = 2,
          color = "#FF8A18",
          cterm = nil,
          highlight = "DiagnosticVirtualTextWarn",
      },
      Info = {
          text = { "-", "=" },
          priority = 3,
          color = "#49B38E",
          cterm = nil,
          highlight = "DiagnosticVirtualTextInfo",
      },
      Hint = {
          text = { "-", "=" },
          priority = 4,
          color = "#49B38E",
          cterm = nil,
          highlight = "DiagnosticVirtualTextHint",
      },
      Misc = {
          text = { "-", "=" },
          priority = 5,
          color = "#49B38E",
          cterm = nil,
          highlight = "Normal",
      },
      GitAdd = {
          text = "┆",
          priority = 5,
          color = "#FF8A18",
          cterm = nil,
          highlight = "GitSignsAdd",
      },
      GitChange = {
          text = "┆",
          priority = 5,
          color = "#49B38E",
          cterm = nil,
          highlight = "GitSignsChange",
      },
      GitDelete = {
          text = "▁",
          priority = 5,
          color = "#49B38E",
          cterm = nil,
          highlight = "GitSignsDelete",
      },
  },
  excluded_buftypes = {
      "terminal",
  },
  excluded_filetypes = {
      "prompt",
      "TelescopePrompt",
      "noice",
  },
  autocmd = {
      render = {
          "BufWinEnter",
          "TabEnter",
          "TermEnter",
          "WinEnter",
          "CmdwinLeave",
          "TextChanged",
          "VimResized",
          "WinScrolled",
      },
      clear = {
          "BufWinLeave",
          "TabLeave",
          "TermLeave",
          "WinLeave",
      },
  },
  handlers = {
      diagnostic = true,
      search = false, -- Requires hlslens to be loaded
      gitsigns = false, -- Requires gitsigns.nvim
  },
})