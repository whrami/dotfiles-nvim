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

local Color3 = '#A0A0A0'
local Color8 = '#1b2321'
local Color1 = '#FFF'
local Color2 = '#FF8080'
local Color5 = '#99FFE4'
local Color7 = '#161616'
local Color4 = '#FFC799'
local Color0 = '#575757'
local Color10 = '#323232'
local Color11 = '#505050'
local Color9 = '#3a2929'
local Color6 = '#101010'

highlight('Comment', nil, Color0, nil)
highlight('Identifier', nil, Color1, nil)
highlight('Error', nil, Color2, nil)
highlight('Keyword', nil, Color3, nil)
highlight('Conditional', nil, Color3, nil)
highlight('Repeat', nil, Color3, nil)
highlight('Function', nil, Color4, nil)
highlight('Number', nil, Color4, nil)
highlight('TSCharacter', nil, Color4, nil)
highlight('String', nil, Color5, nil)
highlight('StatusLine', Color3, Color6, nil)
highlight('WildMenu', Color6, Color1, nil)
highlight('Pmenu', Color6, Color1, nil)
highlight('PmenuSel', Color1, Color7, nil)
highlight('PmenuThumb', Color2, nil, nil)
highlight('DiffAdd', Color8, nil, nil)
highlight('DiffDelete', Color9, nil, nil)
highlight('Normal', Color6, Color4, nil)
highlight('Visual', Color10, nil, nil)
highlight('CursorLine', Color10, nil, nil)
highlight('ColorColumn', Color10, nil, nil)
highlight('SignColumn', Color6, nil, nil)
highlight('LineNr', nil, Color11, nil)
highlight('TabLine', Color6, nil, nil)
highlight('TabLineSel', nil, Color7, nil)
highlight('TabLineFill', Color6, nil, nil)
highlight('TSPunctDelimiter', nil, Color1, nil)

highlight('Special', nil, Color0, nil)

-- finding some last little stragglers
highlight('Directory', nil, Color2, nil)
highlight('DiagnosticHint', nil, Color1, nil)
highlight('DiagnosticWarn', nil, Color3, nil)
highlight('DiagnosticError', nil, Color2, nil)

link('TSTagDelimiter', 'Type')
link('TSFunction', 'Function')
link('TSConditional', 'Conditional')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSParameter', 'Constant')
link('Macro', 'Function')
link('TSKeyword', 'Keyword')
link('Folded', 'Comment')
link('TelescopeNormal', 'Normal')
link('TSNumber', 'Number')
link('TSRepeat', 'Repeat')
link('TSFuncMacro', 'Macro')
link('TSNamespace', 'TSType')
link('TSField', 'Constant')
link('Repeat', 'Conditional')
link('TSFloat', 'Number')
link('NonText', 'Comment')
link('Operator', 'Keyword')
link('TSLabel', 'Type')
link('TSConstant', 'Constant')
link('TSProperty', 'TSField')
link('Conditional', 'Operator')
link('CursorLineNr', 'Identifier')
link('TSComment', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSType', 'Type')
link('TSTag', 'MyTag')
link('TSString', 'String')
link('Whitespace', 'Comment')
link('TSOperator', 'Operator')
link('TSParameterReference', 'TSParameter')

vim.fn.sign_define('DapStopped', { linehl = "PmenuThumb" })
