-- Seamless Ctrl+h/j/k/l navigation between Neovim splits and tmux panes.
-- Pairs with `christoomey/vim-tmux-navigator` already installed in ~/.tmux.conf.
vim.pack.add { 'https://github.com/christoomey/vim-tmux-navigator' }

-- The plugin auto-binds <C-h/j/k/l> by default; nothing else needed.
-- If you ever want to disable the defaults and bind manually:
-- vim.g.tmux_navigator_no_mappings = 1
