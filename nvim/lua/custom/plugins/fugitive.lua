-- vim-fugitive + vim-rhubarb: `:GBrowse` opens the current file on GitHub.
-- In visual mode it includes the selected line range in the URL.
vim.pack.add {
  'https://github.com/tpope/vim-fugitive',
  'https://github.com/tpope/vim-rhubarb',
}

vim.keymap.set('n', '<leader>gb', '<Cmd>GBrowse<CR>', { desc = '[G]it [B]rowse on GitHub' })
vim.keymap.set('v', '<leader>gb', ":GBrowse<CR>", { desc = '[G]it [B]rowse on GitHub' })
vim.keymap.set('n', '<leader>gy', '<Cmd>GBrowse!<CR>', { desc = '[G]it [Y]ank GitHub URL' })
vim.keymap.set('v', '<leader>gy', ":GBrowse!<CR>", { desc = '[G]it [Y]ank GitHub URL' })
