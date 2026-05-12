-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local plugins = {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons') -- not strictly required, but recommended
end

vim.pack.add(plugins)

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  close_if_last_window = true, -- close nvim if neo-tree is the last window left
  window = {
    position = 'left',
    width = 30,
  },
  filesystem = {
    follow_current_file = { enabled = true }, -- auto-reveal current file as you switch buffers
    use_libuv_file_watcher = true,            -- live-update tree when files change on disk
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
}

-- Auto-open neo-tree on startup, pinned to the left.
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    -- Skip if nvim was opened with a file argument and you just want to edit
    -- (still opens, but doesn't grab focus)
    vim.cmd 'Neotree show'
  end,
})
