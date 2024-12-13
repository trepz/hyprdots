return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup {
      { '<leader>g', group = 'Git' },
      { '<leader>g_', hidden = true },
      { '<leader>l', group = 'LSP' },
      { '<leader>l_', hidden = true },
      { '<leader>s', group = 'Search' },
      { '<leader>s_', hidden = true },
      { '<leader>y', group = 'Yank' },
      { '<leader>y_', hidden = true },
      { '<leader>h', desc = 'Git hunk', mode = 'v' },
    }
  end,
}
