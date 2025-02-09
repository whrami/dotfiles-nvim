local function map(mode, lhs, rhs, opts)
  -- local options = { noremap=true, silent=true }
  -- if opts then
  --   options = vim.tbl_extend('force', options, opts)
  -- end
  -- vim.keymap.set(mode, lhs, rhs, options)
  --
  require("which-key").add({
    mode = mode,
    noremap = true,
    silent = true,
    vim.tbl_extend('force', { [1] = lhs, [2] = rhs }, opts or {}),
  })

end

-- mapleader set in init.lua, because lazy.nvim says so.

-- fuzzy find by filename
map('n', '<Leader><Space>', ':FzfLua files<CR>')
map('n', '<Leader>/', ':FzfLua live_grep<CR>')

-- neotree
map('n', '<Leader>e', ':Neotree toggle<CR>')

-- a little vscode familiarity
map('n', '<Leader>`', ':bel new +te<CR>a', { desc = 'Shell (split)' })

-- prettier
map('n', '<Leader>f', ':Prettier<CR>', { desc = 'Format (prettier)' })

-- DAP-UI bindings for debugging -- NOTE Dap-UI has some very irritating bugs around toggling the UI on and off, and seems to have
-- show-stopping bugs that require a restart of nvim after a single start/terminate cycle.
--
-- map('n', '<Leader>db', ':DapToggleBreakpoint<CR>')
-- map('n', '<Leader>da', function()
-- 	require("dapui").open()
-- 	vim.cmd[[:DapNew]]
-- end) map('n', '<Leader>dx', function()
-- 	vim.cmd[[:DapTerminate]]
-- 	require("dapui").close()
-- end)
-- map('n', '<Leader>dc', ':DapContinue<CR>')
-- map('n', '<Leader>do', ':DapStepOut<CR>')
-- map('n', '<Leader>dO', ':DapStepOver<CR>')
-- map('n', '<Leader>di', ':DapStepInto<CR>')
-- map('n', '<Leader>du', ':lua require("dapui").toggle()<CR>')

-- DAP-Only bindings: comment these out if the DAP-UI bindings above are enabled, and vice versa

map('n', '<Leader>dc', function() require('dap').continue() end, { desc = "Start/cont" })
map('n', '<Leader>do', function() require('dap').step_over() end, { desc = "Over  " })
map('n', '<Leader>di', function() require('dap').step_into() end, { desc = "In 󰆹" })
map('n', '<Leader>du', function() require('dap').step_out() end, { desc = "Out 󰆸" })
map('n', '<Leader>db', function() require('dap').toggle_breakpoint() end, { desc = "(Un)set " })
map('n', '<Leader>dl', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { desc = "(Un)set log " })
map('n', '<Leader>dr', function() require('dap').repl.toggle() end, { desc = "REPL" })
map({'n', 'v'}, '<Leader>dh', function()
	require('dap.ui.widgets').hover()
end, { desc = "Inspect (hover)" })
map({'n', 'v'}, '<Leader>dp', function()
	require('dap.ui.widgets').preview()
end, { desc = "Preview (hover)" })
map('n', '<Leader>df', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.frames)
end, { desc = "Frames" })
map('n', '<Leader>ds', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.scopes)
end, { desc = "Scopes" })

-- quick access for the themes i use most
map('n', '<Leader>c', nil, { group = 'Config' })
map('n', '<Leader>cl', ':colorscheme kanagawa-lotus<CR>', { desc = "kanagawa-lotus (theme)" })
map('n', '<Leader>cw', ':colorscheme kanagawa-wave<CR>', { desc = "kanagawa-wave (theme)" })
map('n', '<Leader>cd', ':colorscheme kanagawa-dragon<CR>', { desc = "kanagawa-dragon (theme)" })

