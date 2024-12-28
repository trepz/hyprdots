return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    local mini = require 'mini.ai'
    mini.setup {
      n_lines = 500,
      custom_textobjects = {
        t = mini.gen_spec.treesitter {
          a = '@element.outer',
          i = '@element.inner',
        },
      },
    }
  end,
}
