-- Colorscheme generated by https://github.com/arcticlimer/djanho
vim.cmd[[highlight clear]]

local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color11 = '#747478'
local Color9 = '#232222'
local Color5 = '#dedede'
local Color8 = '#dddddd'
local Color10 = '#6e6e6e'
local Color12 = '#2c2c2b'
local Color3 = '#4db1cb'
local Color14 = '#ebebeb'
local Color1 = '#fe8170'
local Color0 = '#7f8c98'
local Color2 = '#fe7ab2'
local Color13 = '#9f9f9e'
local Color7 = '#b4b3b3'
local Color4 = '#d8c87c'
local Color6 = '#403e3e'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Number', nil, Color4, nil)
highlight('Operator', nil, Color5, nil)
highlight('StatusLine', Color7, Color6, nil)
highlight('WildMenu', Color9, Color8, nil)
highlight('Pmenu', Color9, Color8, nil)
highlight('PmenuSel', Color8, Color6, nil)
highlight('PmenuThumb', Color9, Color8, nil)
highlight('Normal', Color9, Color8, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color12, Color13, nil)
highlight('TabLineSel', Color14, Color6, nil)
highlight('TabLineFill', Color12, Color13, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('Macro', 'Function')
link('TSTag', 'MyTag')
link('TSTagDelimiter', 'Type')
link('TSFunction', 'Function')
link('TSFuncMacro', 'Macro')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSString', 'String')
link('Repeat', 'Conditional')
link('TSProperty', 'TSField')
link('Operator', 'Keyword')
link('TSFloat', 'Number')
link('TSLabel', 'Type')
link('TelescopeNormal', 'Normal')
link('TSPunctBracket', 'MyTag')
link('Folded', 'Comment')
link('TSComment', 'Comment')
link('TSRepeat', 'Repeat')
link('TSType', 'Type')
link('TSParameterReference', 'TSParameter')
link('Conditional', 'Operator')
link('TSKeyword', 'Keyword')
link('TSNumber', 'Number')
link('Whitespace', 'Comment')
link('TSConditional', 'Conditional')
link('CursorLineNr', 'Identifier')
link('TSConstant', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSNamespace', 'TSType')
link('TSField', 'Constant')
link('TSParameter', 'Constant')
link('NonText', 'Comment')
link('TSOperator', 'Operator')
