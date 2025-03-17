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

local Color8 = '#95815B'
local Color9 = '#3F3433'
local Color13 = '#6A5C41'
local Color5 = '#F7E0B4'
local Color12 = '#574a44'
local Color4 = '#81A2BE'
local Color7 = '#352B2A'
local Color3 = '#CC6666'
local Color6 = '#B5BD68'
local Color11 = '#513a39'
local Color10 = '#4e463a'
local Color0 = '#DE935F'
local Color1 = '#7C705A'
local Color2 = '#B294BB'

highlight('Number', nil, Color0, nil)
highlight('Comment', nil, Color1, nil)
highlight('Keyword', nil, Color2, nil)
highlight('Type', nil, Color2, nil)
highlight('Type', nil, Color3, nil)
highlight('Function', nil, Color4, nil)
highlight('Identifier', nil, Color5, nil)
highlight('Constant', nil, Color3, nil)
highlight('String', nil, Color6, nil)
highlight('Comment', nil, nil, 'italic')
highlight('String', nil, nil, 'italic')
highlight('Keyword', nil, nil, 'italic')
highlight('StatusLine', Color8, Color7, nil)
highlight('WildMenu', Color9, Color5, nil)
highlight('Pmenu', Color9, Color5, nil)
highlight('PmenuSel', Color5, Color9, nil)
highlight('PmenuThumb', Color9, Color5, nil)
highlight('DiffAdd', Color10, nil, nil)
highlight('DiffDelete', Color11, nil, nil)
highlight('Normal', Color9, Color5, nil)
highlight('Visual', Color12, nil, nil)
highlight('CursorLine', Color12, nil, nil)
highlight('ColorColumn', Color12, nil, nil)
highlight('SignColumn', Color9, nil, nil)
highlight('LineNr', nil, Color13, nil)
highlight('TabLine', Color7, Color13, nil)
highlight('TabLineSel', Color5, Color9, nil)
highlight('TabLineFill', Color7, Color13, nil)
highlight('TSPunctDelimiter', nil, Color5, nil)

link('TSProperty', 'TSField')
link('TelescopeNormal', 'Normal')
link('Operator', 'Keyword')
link('TSComment', 'Comment')
link('TSFuncMacro', 'Macro')
link('TSConstant', 'Constant')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSRepeat', 'Repeat')
link('TSParameter', 'Constant')
link('TSNamespace', 'TSType')
link('Repeat', 'Conditional')
link('TSType', 'Type')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSOperator', 'Operator')
link('Conditional', 'Operator')
link('NonText', 'Comment')
link('TSFunction', 'Function')
link('TSParameterReference', 'TSParameter')
link('TSNumber', 'Number')
link('TSString', 'String')
link('Folded', 'Comment')
link('Macro', 'Function')
link('TSPunctBracket', 'MyTag')
link('TSLabel', 'Type')
link('TSTag', 'MyTag')
link('TSField', 'Constant')
link('Whitespace', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSKeyword', 'Keyword')
link('TSFloat', 'Number')
link('TSTagDelimiter', 'Type')
link('TSConditional', 'Conditional')
