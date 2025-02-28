return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    -- Better text objects
    local ai = require 'mini.ai'
    ai.setup {
      n_lines = 500,
      custom_textobjects = {
        t = ai.gen_spec.treesitter {
          a = '@element.outer',
          i = '@element.inner',
        },
      },
    }

    -- Surround to replace tpopes
    local surround = require 'mini.surround'
    surround.setup {
      mappings = {
        add = 'ri', -- Add surrounding in Normal and Visual modes
        delete = 'rd', -- Delete surrounding
        find = 'rf', -- Find surrounding (to the right)
        find_left = 'rF', -- Find surrounding (to the left)
        highlight = 'rh', -- Highlight surrounding
        replace = 'rr', -- Replace surrounding
        update_n_lines = 'rn', -- Update `n_lines`

        suffix_last = 'l', -- Suffix to search with "prev" method
        suffix_next = 'n', -- Suffix to search with "next" method
      },
    }
  end,
}
