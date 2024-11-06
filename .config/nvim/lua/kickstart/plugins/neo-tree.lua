-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree toggle<CR>', { desc = 'NeoTree toggle' } },
    -- { '<leader>e', ':Neotree focus<CR>', { desc = 'NeoTree focus' } },
  },
  opts = {
    close_if_last_window = true,
    event_handlers = {
      {
        event = 'file_opened',
        handler = function()
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
    window = { width = 25, auto_expand_width = true },
    filesystem = { follow_current_file = { enabled = true } },
  },
}
