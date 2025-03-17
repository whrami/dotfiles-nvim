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

local Color13 = '#444444'
local Color6 = '#ededed'
local Color11 = '#bbbbbb'
local Color9 = '#dbdbdb'
local Color3 = '#587EA8'
local Color8 = '#000000'
local Color10 = '#b5d5ff'
local Color12 = '#c6c6c6'
local Color4 = '#255E22'
local Color7 = '#ffffff'
local Color5 = '#666666'
local Color2 = '#323E7D'
local Color0 = '#546348'
local Color1 = '#853e64'

highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color2, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color3, nil)
highlight('Error', nil, Color4, nil)
highlight('StatusLine', Color5, Color6, nil)
highlight('WildMenu', Color7, Color8, nil)
highlight('Pmenu', Color7, Color8, nil)
highlight('PmenuSel', Color8, Color9, nil)
highlight('PmenuThumb', Color7, Color8, nil)
highlight('Normal', Color7, Color8, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color7, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color12, Color5, nil)
highlight('TabLineSel', Color13, Color9, nil)
highlight('TabLineFill', Color12, Color5, nil)
highlight('TSPunctDelimiter', nil, Color8, nil)

link('TSRepeat', 'Repeat')
link('CursorLineNr', 'Identifier')
link('Repeat', 'Conditional')
link('TSNumber', 'Number')
link('TSLabel', 'Type')
link('TSFuncMacro', 'Macro')
link('Whitespace', 'Comment')
link('TSOperator', 'Operator')
link('TSConditional', 'Conditional')
link('TSType', 'Type')
link('TelescopeNormal', 'Normal')
link('TSField', 'Constant')
link('TSConstant', 'Constant')
link('TSProperty', 'TSField')
link('Conditional', 'Operator')
link('Folded', 'Comment')
link('TSParameter', 'Constant')
link('TSFunction', 'Function')
link('TSComment', 'Comment')
link('TSNamespace', 'TSType')
link('TSPunctBracket', 'MyTag')
link('TSTag', 'MyTag')
link('NonText', 'Comment')
link('TSParameterReference', 'TSParameter')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSString', 'String')
link('TSKeyword', 'Keyword')
link('Macro', 'Function')
link('Operator', 'Keyword')
