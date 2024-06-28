return {
  'neanias/everforest-nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('everforest').setup {
      background = 'hard',
    }
    vim.cmd.colorscheme 'everforest'
  end,
}
