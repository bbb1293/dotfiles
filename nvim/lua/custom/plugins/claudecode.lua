-- claudecode.nvim: run Claude Code in a terminal split with MCP integration,
-- so Claude can read/edit open buffers and propose diffs you accept in nvim.
-- Requires the `claude` CLI on PATH.
vim.pack.add { 'https://github.com/coder/claudecode.nvim' }
require('claudecode').setup {}

-- The plugin only registers commands; keymaps are on us.
local map = function(lhs, rhs, desc, mode)
  vim.keymap.set(mode or 'n', lhs, rhs, { silent = true, desc = desc })
end
map('<leader>ac', '<cmd>ClaudeCode<cr>',             'Toggle Claude')
map('<leader>af', '<cmd>ClaudeCodeFocus<cr>',        'Focus Claude')
map('<leader>ar', '<cmd>ClaudeCode --resume<cr>',    'Resume Claude')
map('<leader>aC', '<cmd>ClaudeCode --continue<cr>',  'Continue Claude')
map('<leader>am', '<cmd>ClaudeCodeSelectModel<cr>',  'Select Claude model')
map('<leader>ab', '<cmd>ClaudeCodeAdd %<cr>',        'Add current buffer')
map('<leader>as', '<cmd>ClaudeCodeSend<cr>',         'Send to Claude', 'v')
map('<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>',   'Accept diff')
map('<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>',     'Deny diff')
