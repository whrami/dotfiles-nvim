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

local Color0 = '#8f1a1a'
local Color3 = '#111111'
local Color1 = '#481414'
local Color2 = '#ff2222'
local Color4 = '#ff7766'
local Color5 = '#512828'

highlight('Comment', nil, Color5, nil)
highlight('Keyword', nil, Color0, nil)
highlight('Statement', nil, Color0, nil)
highlight('Constant', nil, Color1, nil)
highlight('Type', nil, Color0, nil)
highlight('Error', nil, Color0, nil)
highlight('StatusLine', Color2, Color1, nil)
highlight('WildMenu', Color3, Color2, nil)
highlight('Pmenu', Color3, Color2, nil)
highlight('PmenuSel', Color2, Color1, nil)
highlight('PmenuThumb', Color0, Color1, nil)
highlight('DiffAdd', Color1, nil, nil)
highlight('DiffDelete', Color1, nil, nil)
highlight('Normal', Color3, Color2, nil)
highlight('Visual', Color1, nil, nil)
highlight('CursorLine', Color1, nil, nil)
highlight('ColorColumn', Color1, nil, nil)
highlight('SignColumn', Color3, nil, nil)
highlight('LineNr', nil, Color1, nil)
highlight('TabLine', Color3, Color0, nil)
highlight('TabLineSel', Color2, Color1, nil)
highlight('TabLineFill', Color3, Color0, nil)
highlight('TSPunctDelimiter', nil, Color2, nil)

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
link('Whitespace', 'Comment')
link('TSConditional', 'Conditional')
link('TSParameter', 'Constant')
link('Repeat', 'Conditional')
link('TSConstant', 'Constant')
link('TSString', 'String')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('TSTag', 'MyTag')
link('TSParameterReference', 'TSParameter')
link('CursorLineNr', 'Identifier')
link('TSProperty', 'TSField')
link('TSLabel', 'Type')
link('TSComment', 'Comment')
link('TelescopeNormal', 'Normal')
link('Macro', 'Function')
link('Conditional', 'Operator')
link('TSTagDelimiter', 'Type')
link('TSFunction', 'Function')
link('TSPunctBracket', 'MyTag')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSOperator', 'Operator')
link('TSKeyword', 'Keyword')
link('TSNumber', 'Number')
link('TSNamespace', 'TSType')
link('TSRepeat', 'Repeat')
link('Folded', 'Comment')
link('TSFuncMacro', 'Macro')
link('Operator', 'Keyword')
link('NonText', 'Comment')
link('TSType', 'Type')
link('TSField', 'Constant')

vim.fn.sign_define('DapStopped', { linehl = "PmenuThumb" })
