return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    -- 'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
  },

  config = function()
    local neogit = require 'neogit'
    local opts = {
      kind = 'split',
      integration = {
        diff_view = true,
      },
    }

    neogit.setup(opts)

    vim.keymap.set('n', '<leader>gg', neogit.open, { desc = '[G]it Open config' })
    vim.keymap.set('n', '<leader>gp', neogit.action('pull', 'from_upstream', { '--rebase', '--tags' }), { desc = '[G]it [p]ull (from upstream)' })
    vim.keymap.set('n', '<leader>gp', neogit.action('push', 'to_pushremote', { '--set-upstream' }), { desc = '[G]it [p]ull (from upstream)' })
    vim.keymap.set('n', '<leader>gf', neogit.action('fetch', 'fetch_all_remotes', { '--prune', '--tags' }), { desc = '[G]it [F]etch (fetch all remotes)' })
  end,
}
