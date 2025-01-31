local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  -- vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  vim.keymap.set(mode, lhs, rhs, options)
end

-- mapleader set in init.lua, because lazy.nvim says so.

-- fuzzy find by filename
map('n', '<Leader><Space>', ':FzfLua files<CR>')
map('n', '<Leader>/', ':FzfLua live_grep<CR>')

-- neotree
map('n', '<Leader>e', ':Neotree toggle<CR>')

-- dap/debugging
map('n', '<Leader>db', ':DapToggleBreakpoint<CR>')
map('n', '<Leader>da', function()
	require("dapui").open()
	vim.cmd[[:DapNew]]
end)
map('n', '<Leader>dx', function()
	vim.cmd[[:DapTerminate]]
	require("dapui").close()
end)
map('n', '<Leader>dc', ':DapContinue<CR>')
map('n', '<Leader>do', ':DapStepOut<CR>')
map('n', '<Leader>dO', ':DapStepOver<CR>')
map('n', '<Leader>di', ':DapStepInto<CR>')
map('n', '<Leader>du', ':lua require("dapui").toggle()<CR>')

