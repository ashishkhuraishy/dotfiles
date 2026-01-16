-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      transparent = true,
    },
    init = function()
      -- Load the colorscheme here.
      -- vim.cmd.colorscheme 'kanagawa'

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    -- priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = {
      transparent = true,
    },
    init = function()
      -- Load the colorscheme here.
      -- vim.cmd.colorscheme 'carbonfox'

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.

    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
    init = function()
      vim.cmd.colorscheme 'catppuccin'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
    end,
  },
}
