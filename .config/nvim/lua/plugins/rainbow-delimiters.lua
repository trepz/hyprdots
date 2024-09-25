return {
  'HiPhish/rainbow-delimiters.nvim',
  ft = { 'clojure', 'fennel' },
  lazy = true,
  config = function()
    local dl = require 'rainbow-delimiters'
    require('rainbow-delimiters.setup').setup {
      strategy = {
        [''] = dl.strategy['local'],
      },
    }
  end,
}
