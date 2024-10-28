return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = 'LSP', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = 'Search', _ = 'which_key_ignore' },
      ['<leader>y'] = { name = 'Yank', _ = 'which_key_ignore' },
    }
    -- visual mode
    require('which-key').register({
      ['<leader>h'] = { 'Git hunk' },
    }, { mode = 'v' })
  end,
}
