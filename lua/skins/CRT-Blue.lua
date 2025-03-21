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

local Color2 = '#1a3350'
local Color1 = '#0099ff'
local Color0 = '#07598f'
local Color3 = '#11111a'
local Color4 = '#60c9ff'
local Color5 = '#304860'

highlight('Comment', nil, Color5, nil)
highlight('Keyword', nil, Color0, nil)
highlight('Statement', nil, Color0, nil)
highlight('Constant', nil, Color1, nil)
highlight('Type', nil, Color0, nil)
highlight('Error', nil, Color0, nil)
highlight('StatusLine', Color1, Color2, nil)
highlight('WildMenu', Color3, Color1, nil)
highlight('Pmenu', Color3, Color1, nil)
highlight('PmenuSel', Color1, Color2, nil)
highlight('PmenuThumb', Color0, Color1, nil)
highlight('DiffAdd', Color2, nil, nil)
highlight('DiffDelete', Color2, nil, nil)
highlight('Normal', Color3, Color1, nil)
highlight('Visual', Color2, nil, nil)
highlight('CursorLine', Color2, nil, nil)
highlight('ColorColumn', Color2, nil, nil)
highlight('SignColumn', Color3, nil, nil)
highlight('LineNr', nil, Color2, nil)
highlight('TabLine', Color3, Color0, nil)
highlight('TabLineSel', Color1, Color2, nil)
highlight('TabLineFill', Color3, Color0, nil)
highlight('TSPunctDelimiter', nil, Color1, nil)

highlight('Identifier', nil, Color0, nil)
highlight('Conditional', nil, Color1, nil)
highlight('Repeat', nil, Color2, nil)
highlight('Operator', nil, Color0, nil)
highlight('Function', nil, Color1, nil)
highlight('Number', nil, Color2, nil)
highlight('String', nil, Color0, nil)
highlight('Special', nil, Color2, nil)
highlight('TSCharacter', nil, Color0, nil)
highlight('Delimiter', nil, Color4, nil)
highlight('@variable', nil, Color4, nil)
highlight('PreProc', nil, Color4, nil)

-- finding some last little stragglers
highlight('Directory', nil, Color4, nil)
highlight('DiagnosticHint', nil, Color2, nil)
highlight('DiagnosticWarn', nil, Color0, nil)
highlight('DiagnosticError', nil, Color4, nil)

link('TSFloat', 'Number')
link('TSKeyword', 'Keyword')
link('Whitespace', 'Comment')
link('TSField', 'Constant')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSTagDelimiter', 'Type')
link('Macro', 'Function')
link('TSPunctBracket', 'MyTag')
link('NonText', 'Comment')
link('TSConditional', 'Conditional')
link('Repeat', 'Conditional')
link('Operator', 'Keyword')
link('TSOperator', 'Operator')
link('Folded', 'Comment')
link('TSFunction', 'Function')
link('TSRepeat', 'Repeat')
link('TSNumber', 'Number')
link('TelescopeNormal', 'Normal')
link('CursorLineNr', 'Identifier')
link('TSComment', 'Comment')
link('TSProperty', 'TSField')
link('TSTag', 'MyTag')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Conditional', 'Operator')
link('TSParameterReference', 'TSParameter')
link('TSString', 'String')
link('TSLabel', 'Type')
link('TSParameter', 'Constant')
link('TSConstant', 'Constant')
link('TSType', 'Type')
link('TSFuncMacro', 'Macro')
link('TSNamespace', 'TSType')

vim.fn.sign_define('DapStopped', { linehl = "PmenuThumb" })
