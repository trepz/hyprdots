return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup()
    -- Open oil at cwd
    vim.keymap.set('n', '<leader>o', '<cmd>Oil ' .. vim.fn.getcwd() .. ' --float<CR>', { desc = 'Open filesystem' })
    -- Open oil at current file location
    vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
  end,
}
