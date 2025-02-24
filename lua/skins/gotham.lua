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

local Color11 = '#0c3040'
local Color8 = '#33859D'
local Color6 = '#F92672'
local Color0 = '#6e71aa'
local Color10 = '#0a0f14'
local Color2 = '#888BA5'
local Color3 = '#D3EBE9'
local Color5 = '#EDB54B'
local Color1 = '#D26939'
local Color7 = '#F8F8F0'
local Color14 = '#696d81'
local Color13 = '#161D24'
local Color4 = '#C33027'
local Color9 = '#98d1ce'
local Color12 = '#589AA9'

highlight('Comment', nil, Color0, 'italic')
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('Identifier', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color4, nil)
highlight('Function', nil, Color5, nil)
highlight('Error', Color6, Color7, nil)
highlight('StatusLine', nil, Color8, nil)
highlight('WildMenu', Color10, Color9, nil)
highlight('Pmenu', Color10, Color9, nil)
highlight('PmenuSel', Color9, nil, nil)
highlight('PmenuThumb', Color4, nil, nil)
highlight('Normal', Color10, Color9, nil)
highlight('Visual', Color11, nil, nil)
highlight('CursorLine', Color11, nil, nil)
highlight('ColorColumn', Color11, nil, nil)
highlight('SignColumn', Color10, nil, nil)
highlight('LineNr', nil, Color12, nil)
highlight('TabLine', Color13, Color14, nil)
highlight('TabLineFill', Color13, Color14, nil)
highlight('TSPunctDelimiter', nil, Color9, nil)

if "3" == 34 then
  local area = 234 + "dog"
  local field = {'ayo', "thirty bro", 3.25}
end

highlight('Conditional', nil, Color7, nil)
highlight('Repeat', nil, Color2, nil)
highlight('Operator', nil, Color6, nil)
highlight('Special', nil, Color2, nil)
highlight('TSCharacter', nil, Color0, nil)
highlight('Delimiter', nil, Color14, nil)
highlight('@variable', nil, Color9, nil)

link('TSKeyword', 'Keyword')
link('TSLabel', 'Type')
link('TSTag', 'MyTag')
link('TSField', 'Constant')
link('TSNumber', 'Number')
link('TSConditional', 'Conditional')
link('TSFunction', 'Function')
link('TSFloat', 'Number')
link('Conditional', 'Operator')
link('TSNamespace', 'TSType')
link('NonText', 'Comment')
link('Folded', 'Comment')
link('CursorLineNr', 'Identifier')
link('TSFuncMacro', 'Macro')
link('TSRepeat', 'Repeat')
link('TSTagDelimiter', 'Type')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('TSOperator', 'Operator')
link('Operator', 'Keyword')
link('TSString', 'String')
link('TSParameterReference', 'TSParameter')
link('TSConstant', 'Constant')
link('TSPunctBracket', 'MyTag')
link('TSParameter', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSComment', 'Comment')
link('Whitespace', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSProperty', 'TSField')
link('Repeat', 'Conditional')
link('Macro', 'Function')

vim.fn.sign_define('DapStopped', { linehl = "PmenuThumb" })
