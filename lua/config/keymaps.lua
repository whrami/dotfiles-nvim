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
map('n', '<Leader>.', ':FzfLua resume<CR>')

-- neotree
map('n', '<Leader>e', ':Neotree toggle<CR>')

-- a little vscode familiarity
map('n', '<Leader>`', ':bel new +te<CR>a', { desc = 'Shell (split)' })
map('n', '<Leader>~', ':bel tabnew +te<CR>a', { desc = 'Shell (new tab)' })

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
map('n', '<Leader>dx', function() require('dap').terminate() end, { desc = "Terminate" })
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

-- this is a handy way to apply "skin" files, my own term for outputs from the vscode theme converter, djanho.
-- This converter can take any vscode .json theme, and produce a .vim Vimscript file that applies the theme in Neovim.
-- see https://github.com/viniciusmuller/djanho.git
function apply_skinfile(name)
  vim.cmd('source ' .. vim.fn.stdpath('config') .. '/lua/skins/' .. name .. '.vim')
end

-- quick access for the themes i use most
map('n', '<Leader>c', nil, { group = 'Colors' })
map('n', '<Leader>cl', ':colorscheme kanagawa-lotus<CR>', { desc = "kanagawa-lotus (theme)" })
map('n', '<Leader>cw', ':colorscheme kanagawa-wave<CR>', { desc = "kanagawa-wave (theme)" })
map('n', '<Leader>cd', ':colorscheme kanagawa-dragon<CR>', { desc = "kanagawa-dragon (theme)" })
map('n', '<Leader>cf', ':colorscheme falcon<CR>', { desc = "falcon (theme)" })
map('n', '<Leader>cv', ':colorscheme vscode<CR>:lua require("vscode").load("dark")<CR>', { desc = "VSCode-dark (theme)" })
map('n', '<Leader>cV', ':colorscheme vscode<CR>:lua require("vscode").load("light")<CR>', { desc = "VSCode-light (theme)" })
map('n', '<Leader>cp', ':colorscheme kanagawa-paper-ink<CR>', { desc = "Kanagawa-paper-ink (theme)" })
map('n', '<Leader>cP', ':colorscheme kanagawa-paper-canvas<CR>', { desc = "Kanagawa-paper-canvas (theme)" })

local ld_appren = function(mode, contrast)
  vim.o.background = mode
  if mode == "light" then
    vim.g.apprentice_contrast_light = contrast
  else
    vim.g.apprentice_contrast_dark = contrast
  end
  require("lush")(require('apprentice').setup({
    plugins = {
      "cmp", -- nvim-cmp
      "fzf",
      "lsp",
      "nvimtree",
      "netrw",
      "treesitter",
    },
    langs = {
      "css",
      "golang",
      "html",
      "java",
      "js",
      "json",
      "jsx",
      "lua",
      "markdown",
      "python",
      "typescript",
      "xml",
    },
  }))
end

map('n', '<Leader>ca', function() ld_appren('dark', 'medium') end, { desc = 'Apprentice dark' })
map('n', '<Leader>cA', function() ld_appren('light', 'medium') end, { desc = 'Apprentice light' })

map('n', '<Leader>cc', function() vim.o.background = "dark"; vim.cmd([[colorscheme chocolatier]]) end, { desc = "Chocolatier" })
map('n', '<Leader>cC', function() vim.o.background = "light"; vim.cmd([[colorscheme chocolatier]]) end, { desc = "Chocolatier light" })

map('n', '<Leader>cs', function()
  require('config/skins').do_skin_picker()
end, { desc = 'Skin Picker' })

-- LaTeX authoring stuff
vim.api.nvim_create_autocmd("FileType", {
  pattern = {'tex'},
 callback = function()
    vim.schedule(function()
      map('n', '<Leader>lv', ':VimtexCompile<CR>', { desc = '(latex) View in Skim' })
    end)
  end,
})

-- codeium (part of = 'config' group)
map('n', '<Leader>=', nil, { group = 'Change...' })
map('n', '<Leader>=a', ':CodeiumToggle<CR>', { desc = "Toggle Codeium" })


-- little bit of vscode-like stuff; be able to run an npm command
function run_npm_command()
  local taskname = vim.fn.input('Run NPM task: ')
  vim.cmd('!npm run ' .. taskname)
end
map('n', '<Leader>n', run_npm_command, { desc = "npm run ___" })


-- rando usability -- 
map('n', '<Leader><BS>', ':Noice last<CR>', { desc = 'Review last message' })

