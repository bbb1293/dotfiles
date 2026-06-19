-- claudecode.nvim: run Claude Code in a terminal split with MCP integration,
-- so Claude can read/edit open buffers and propose diffs you accept in nvim.
-- Requires the `claude` CLI on PATH.
--
-- Default keymaps (set by the plugin) live under <leader>a:
--   <leader>ac  toggle Claude          <leader>af  focus Claude
--   <leader>ar  resume                  <leader>aC  continue
--   <leader>ab  add current buffer      <leader>as  send selection (visual)
--   <leader>aa  accept diff             <leader>ad  deny diff
vim.pack.add { 'https://github.com/coder/claudecode.nvim' }
require('claudecode').setup {}
