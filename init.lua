vim.g.mapleader = '<Space>'

require('config.lazy')
require('config.editor')

require('config.completion')

-- gotta load keymaps AFTER the commands they refer to have been loaded by the plugins that define them
require('config.keymaps')

require('config.dap')

