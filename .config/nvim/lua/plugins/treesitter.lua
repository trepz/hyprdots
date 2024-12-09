return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc' },
    -- Autoinstall languages that are not installed
    auto_install = true,
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
    incremental_selection = {
      enable = true,
      keymaps = {
        node_incremental = 'v',
        node_decremental = 'V',
      },
    },
  },
  config = function(_, opts)
    -- Prefer git instead of curl in order to improve connectivity in some environments
    require('nvim-treesitter.install').prefer_git = true
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup(opts)
    -- Add custom parsers
    local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    ---@diagnostic disable-next-line: inject-field
    parser_config.swarm_object = {
      install_info = {
        url = 'https://github.com/trepz/tree-sitter-swarm_object',
        files = { 'src/parser.c' },
        highlight = {
          enable = true,
        },
        branch = 'main',
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
      },
    }
    vim.filetype.add {
      extension = { sso = 'swarm_object', cls = 'swarm_object', prop = 'swarm_object' },
    }
  end,
}
