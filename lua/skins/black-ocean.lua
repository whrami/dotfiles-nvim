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

local Color9 = '#3b4651'
local Color2 = '#15b8ae'
local Color5 = '#e61f44'
local Color3 = '#019d76'
local Color7 = '#074c6a'
local Color8 = '#101316'
local Color0 = '#60778c'
local Color10 = '#1b2025'
local Color6 = '#dfdfdf'
local Color4 = '#007aae'
local Color1 = '#7ebea0'


highlight('Comment', nil, Color0, nil)
highlight('String', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('TSCharacter', nil, Color3, nil)
highlight('Identifier', nil, Color3, nil)
highlight('Keyword', nil, Color4, nil)
highlight('Type', nil, Color3, 'italic')
highlight('Function', nil, Color2, nil)
highlight('Error', nil, Color5, nil)
highlight('StatusLine', Color6, Color7, nil)
highlight('WildMenu', Color8, Color6, nil)
highlight('Pmenu', Color8, Color6, nil)
highlight('PmenuSel', Color6, Color7, nil)
highlight('PmenuThumb', Color4, nil, nil)
-- dap console
highlight('Normal', nil, Color0, nil)
highlight('Visual', Color7, nil, nil)
highlight('CursorLine', Color7, nil, nil)
highlight('ColorColumn', Color7, nil, nil)
highlight('SignColumn', Color8, nil, nil)
highlight('LineNr', nil, Color9, nil)
highlight('TabLine', Color10, Color0, nil)
highlight('TabLineSel', nil, Color7, nil)
highlight('TabLineFill', Color10, Color0, nil)
highlight('TSPunctDelimiter', nil, Color6, nil)

highlight('Conditional', nil, Color1, nil)
highlight('Repeat', nil, Color2, nil)
highlight('Operator', nil, Color0, nil)
highlight('Special', nil, Color9, nil)
highlight('Delimiter', nil, Color6, nil)
highlight('@variable', nil, Color3, nil)

highlight('DiagnosticHint', nil, Color1, nil)
highlight('DiagnosticWarn', nil, Color3, nil)
highlight('DiagnosticError', nil, Color4, nil)

link('TSRepeat', 'Repeat')
link('Conditional', 'Operator')
link('TSFunction', 'Function')
link('TSFuncMacro', 'Macro')
link('TSConditional', 'Conditional')
link('TSField', 'Constant')
link('TSConstant', 'Constant')
link('CursorLineNr', 'Identifier')
link('TSLabel', 'Type')
link('TSKeyword', 'Keyword')
link('TSType', 'Type')
link('TSNamespace', 'TSType')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('NonText', 'Comment')
link('TSProperty', 'TSField')
link('TelescopeNormal', 'Normal')
link('TSNumber', 'Number')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('Whitespace', 'Comment')
link('TSPunctBracket', 'MyTag')
link('TSParameter', 'Constant')
link('TSComment', 'Comment')
link('TSFloat', 'Number')
link('TSOperator', 'Operator')
link('Macro', 'Function')
link('TSTagDelimiter', 'Type')
link('Repeat', 'Conditional')
link('Folded', 'Comment')
link('Operator', 'Keyword')
link('TSTag', 'MyTag')

vim.fn.sign_define('DapStopped', { linehl = "PmenuThumb" })
