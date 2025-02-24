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

local Color0 = '#238f07'
local Color3 = '#111111'
local Color1 = '#33ff00'
local Color2 = '#17400d'
local Color4 = '#88ff44'

highlight('Comment', nil, Color0, nil)
highlight('Keyword', nil, Color0, nil)
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

-- finding some last little stragglers
highlight('Directory', nil, Color4, nil)
highlight('DiagnosticHint', nil, Color4, nil)
highlight('DiagnosticWarn', nil, Color4, nil)

link('TSField', 'Constant')
link('TSConstant', 'Constant')
link('TSTag', 'MyTag')
link('NonText', 'Comment')
link('Macro', 'Function')
link('TSFloat', 'Number')
link('TSProperty', 'TSField')
link('Conditional', 'Operator')
link('TSTagDelimiter', 'Type')
link('TSType', 'Type')
link('TSLabel', 'Type')
link('Folded', 'Comment')
link('TSNumber', 'Number')
link('TSRepeat', 'Repeat')
link('Whitespace', 'Comment')
link('TSString', 'String')
link('TSConditional', 'Conditional')
link('TSFuncMacro', 'Macro')
link('TSComment', 'Comment')
link('Operator', 'Keyword')
link('TSNamespace', 'TSType')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TelescopeNormal', 'Normal')
link('TSParameterReference', 'TSParameter')
link('Repeat', 'Conditional')
link('TSOperator', 'Operator')
link('TSPunctBracket', 'MyTag')
link('TSFunction', 'Function')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSParameter', 'Constant')
link('TSKeyword', 'Keyword')
link('CursorLineNr', 'Identifier')

vim.fn.sign_define('DapStopped', { linehl = "PmenuThumb" })
