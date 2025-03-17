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

local Color5 = '#91D462'
local Color0 = '#6C7986'
local Color7 = '#b4b3b3'
local Color14 = '#ebebeb'
local Color9 = '#dddddd'
local Color6 = '#403e3e'
local Color11 = '#747478'
local Color12 = '#9f9f9e'
local Color2 = '#9686F5'
local Color1 = '#FC6A5D'
local Color4 = '#FC5FA3'
local Color10 = '#6e6e6e'
local Color8 = '#232222'
local Color13 = '#2c2c2b'
local Color3 = '#53A5FB'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Identifier', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color4, nil)
highlight('Function', nil, Color5, nil)
highlight('StatusLine', Color7, Color6, nil)
highlight('WildMenu', Color8, Color9, nil)
highlight('Pmenu', Color8, Color9, nil)
highlight('PmenuSel', Color9, Color6, nil)
highlight('PmenuThumb', Color8, Color9, nil)
highlight('Normal', Color8, Color9, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color13, Color12, nil)
highlight('TabLineSel', Color14, Color6, nil)
highlight('TabLineFill', Color13, Color12, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

link('TSProperty', 'TSField')
link('TSTag', 'MyTag')
link('TSConstant', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TelescopeNormal', 'Normal')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TSNumber', 'Number')
link('TSComment', 'Comment')
link('Conditional', 'Operator')
link('TSRepeat', 'Repeat')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSString', 'String')
link('TSType', 'Type')
link('Whitespace', 'Comment')
link('TSFunction', 'Function')
link('TSParameter', 'Constant')
link('TSTagDelimiter', 'Type')
link('Macro', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Repeat', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSParameterReference', 'TSParameter')
link('NonText', 'Comment')
link('Operator', 'Keyword')
link('TSField', 'Constant')
link('TSFloat', 'Number')
link('TSOperator', 'Operator')
link('CursorLineNr', 'Identifier')
link('TSConditional', 'Conditional')
link('TSNamespace', 'TSType')
link('TSLabel', 'Type')
