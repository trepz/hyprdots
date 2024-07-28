return {
  'habamax/vim-godot',
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    require('lspconfig').gdscript.setup {
      flags = {
        debounce_text_changes = 150,
      },
    }
  end,
}
