local default_header = {
  type = 'text',
  val = {
    '        ██            ██                        ',
    '      ██░░██        ██░░██                      ',
    '      ██░░▒▒████████▒▒░░██                ████  ',
    '    ██▒▒░░░░▒▒▒▒░░▒▒░░░░▒▒██            ██░░░░██',
    '    ██░░░░░░░░░░░░░░░░░░░░██            ██  ░░██',
    '  ██▒▒░░░░░░░░░░░░░░░░░░░░▒▒████████      ██▒▒██',
    '  ██░░  ██  ░░██░░  ██  ░░  ▒▒  ▒▒  ██    ██░░██',
    '  ██░░░░░░░░██░░██░░░░░░░░░░▒▒░░▒▒░░░░██████▒▒██',
    '  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██  ',
    '  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██░░██  ',
    '  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██    ',
    '  ██▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██    ',
    '  ██▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██    ',
    '  ██▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒██    ',
    '    ██▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒██      ',
    '      ██▒▒░░▒▒▒▒░░▒▒░░░░░░▒▒░░▒▒▒▒░░▒▒██        ',
    '        ██░░████░░██████████░░████░░██          ',
    '        ██▓▓░░  ▓▓██░░  ░░██▓▓  ░░▓▓██          ',
    '',
    '███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
    '████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
    '██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
    '██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
    '██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
    '╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
  },
  opts = {
    position = 'center',
    hl = 'Function',
  },
}

local footer = {
  type = 'text',
  val = 'Meow meow meow meow.',
  opts = {
    position = 'center',
    hl = 'Number',
  },
}

local function button(sc, txt, keybind, keybind_opts)
  local opts = {
    position = 'center',
    shortcut = sc,
    cursor = 3,
    width = 50,
    align_shortcut = 'right',
    hl_shortcut = 'string',
  }
  if keybind then
    opts.keymap = { 'n', sc, keybind, keybind_opts }
  end

  local function on_press()
    local key = vim.api.nvim_replace_termcodes(keybind or sc .. '<Ignore>', true, false, true)
    vim.api.nvim_feedkeys(key, 't', false)
  end

  return {
    type = 'button',
    val = txt,
    on_press = on_press,
    opts = opts,
  }
end

local buttons = {
  type = 'group',
  val = {
    button('p', '  Projects', '<cmd>Telescope workspaces <CR>'),
    button('e', '  New file', '<cmd>ene <CR>'),
    button('f', '󰈞  Find file', '<cmd>Telescope find_files <CR>'),
    button('t', '󰊄  Find text', '<cmd>Telescope live_grep <CR>'),
    button('r', '  Find recent', '<cmd>Telescope oldfiles <CR>'),
  },
  opts = {
    spacing = 1,
  },
}

local section = {
  header = default_header,
  buttons = buttons,
  footer = footer,
}

local config = {
  layout = {
    { type = 'padding', val = 2 },
    section.header,
    { type = 'padding', val = 2 },
    section.buttons,
    section.footer,
  },
  opts = {
    margin = 5,
  },
}

return {
  'goolord/alpha-nvim',
  config = function()
    require('alpha').setup(config)
  end,
}
