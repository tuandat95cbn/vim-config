" Lemontree Dark Theme for Vim
" Author: Huy Tran
" License: BSD 3 Clauses

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark
let g:colors_name = 'lemontree-dark'

let g:lemontree_dark_italics = get(g:, 'lemontree_dark_italics', 0)

" Color Palette
let s:gray1     = '#22272e'
let s:gray2     = '#2a3139'
let s:gray3     = '#333a45'
let s:gray4     = '#546072'
let s:gray5     = '#ceecea'

" Lemontree Dark
let s:red       = '#dbbdbd'
let s:green     = '#0fd1a5'
let s:yellow    = '#f5e6a4'
let s:blue      = '#6ed0e6'
let s:purple    = '#a4ebd4'
let s:cyan      = '#6ee2e6'
let s:orange    = '#ffab70'
let s:indigo    = '#98d1ce'

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:lemontree_dark_italics && l:attr ==# 'italic'
        let l:attr = 'none'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

" Vim Editor
call s:HL('ColorColumn',                    '',         s:gray2,    '')
call s:HL('Cursor',                         s:gray2,    s:gray5,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    '')
call s:HL('CursorLine',                     '',         s:gray2,    'none')
call s:HL('CursorLineNr',                   s:cyan,     s:gray2,    'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('DiffAdd',                        s:green,    s:gray2,    'none')
call s:HL('DiffChange',                     s:yellow,   s:gray2,    'none')
call s:HL('DiffDelete',                     s:red,      s:gray2,    'none')
call s:HL('DiffText',                       s:blue,     s:gray2,    'none')
call s:HL('ErrorMsg',                       s:red,      s:gray1,    'bold')
call s:HL('FoldColumn',                     s:gray4,    s:gray1,    '')
call s:HL('Folded',                         s:gray3,    s:gray1,    '')
call s:HL('IncSearch',                      s:yellow,   '',         '')
call s:HL('LineNr',                         s:gray3,    s:gray1,         '')
call s:HL('MatchParen',                     s:gray4,    s:cyan,     'bold')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:green,    '',         '')
call s:HL('NonText',                        s:gray4,    s:gray1,    'none')
call s:HL('Normal',                         s:gray5,    s:gray1,    'none')
call s:HL('Pmenu',                          s:gray5,    s:gray3,    '')
call s:HL('PmenuSbar',                      '',         s:gray2,    '')
call s:HL('PmenuSel',                       s:gray2,    s:cyan,     '')
call s:HL('PmenuThumb',                     '',         s:gray4,    '')
call s:HL('Question',                       s:blue,     '',         'none')
call s:HL('Search',                         s:gray1,    s:yellow,   '')
call s:HL('SignColumn',                     s:gray5,    s:gray1,    '')
call s:HL('SpecialKey',                     s:gray4,    '',         '')
call s:HL('SpellCap',                       s:blue,     s:gray2,    'undercurl')
call s:HL('SpellBad',                       s:red,      s:gray2,    'undercurl')
call s:HL('StatusLine',                     s:gray4,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray2,    s:gray4,    '')
call s:HL('TabLine',                        s:gray4,    s:gray2,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray2,    'none')
call s:HL('TabLineSel',                     s:yellow,   s:gray3,    'none')
call s:HL('Title',                          s:green,    '',         'none')
call s:HL('VertSplit',                      s:gray3,    s:gray1,    'none')
call s:HL('Visual',                         s:gray5,    s:gray3,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray2,    s:cyan,	    '')
call s:HL('EndOfBuffer',                    s:gray3,    s:gray1,    'none')

" Standard Syntax
call s:HL('Comment',                        s:gray4,    '',         'italic')
call s:HL('Constant',                       s:orange,   '',         '')
call s:HL('String',                         s:green,    '',         '')
call s:HL('Character',                      s:green,    '',         '')
call s:HL('Identifier',                     s:red,      '',         'none')
call s:HL('Function',                       s:blue,     '',         '')
call s:HL('Statement',                      s:purple,   '',         'none')
call s:HL('Operator',                       s:cyan,     '',         '')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Include',                        s:blue,     '',         '')
call s:HL('Define',                         s:purple,   '',         'none')
call s:HL('Macro',                          s:purple,   '',         '')
call s:HL('Type',                           s:yellow,   '',         'none')
call s:HL('Structure',                      s:cyan,     '',         '')
call s:HL('Special',                        s:indigo,   '',         '')
call s:HL('Underlined',                     s:blue,     '',         'none')
call s:HL('Error',                          s:red,      s:gray1,    'bold')
call s:HL('Todo',                           s:orange,   s:gray1,    'bold')

" CSS
call s:HL('cssAttrComma',                   s:gray5,    '',         '')
call s:HL('cssPseudoClassId',               s:green,   '',         '')
call s:HL('cssBraces',                      s:gray5,    '',         '')
call s:HL('cssClassName',                   s:purple,   '',         '')
call s:HL('cssClassNameDot',                s:gray5,   '',         '')
call s:HL('cssFunctionName',                s:blue,     '',         '')
call s:HL('cssImportant',                   s:red,     '',         '')
call s:HL('cssIncludeKeyword',              s:red,   '',         '')
call s:HL('cssTagName',                     s:red,      '',         '')
call s:HL('cssMediaType',                   s:green,   '',         '')
call s:HL('cssProp',                        s:blue,    '',         '')
call s:HL('cssSelectorOp',                  s:cyan,     '',         '')
call s:HL('cssSelectorOp2',                 s:cyan,     '',         '')

" Commit Messages (Git)
call s:HL('gitcommitHeader',                s:purple,   '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitSummary',               s:blue,     '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlEndTag',                     s:blue,     '',         '')
call s:HL('htmlLink',                       s:red,      '',         '')
call s:HL('htmlTag',                        s:blue,     '',         '')
call s:HL('htmlTitle',                      s:gray5,    '',         '')
call s:HL('htmlSpecialTagName',             s:purple,   '',         '')

" Javascript
call s:HL('javaScriptBraces',               s:gray5,    '',         '')
call s:HL('javaScriptNull',                 s:orange,   '',         '')
call s:HL('javaScriptIdentifier',           s:purple,   '',         '')
call s:HL('javaScriptNumber',               s:orange,   '',         '')
call s:HL('javaScriptRequire',              s:cyan,     '',         '')
call s:HL('javaScriptReserved',             s:purple,   '',         '')
" pangloss/vim-javascript
call s:HL('jsArrowFunction',                s:purple,   '',         '')
call s:HL('jsAsyncKeyword',                 s:purple,   '',         '')
call s:HL('jsExtendsKeyword',               s:red,   '',         '')
call s:HL('jsClassKeyword',                 s:red,   '',         '')
call s:HL('jsDocParam',                     s:green,    '',         '')
call s:HL('jsDocTags',                      s:cyan,     '',         '')
call s:HL('jsForAwait',                     s:purple,   '',         '')
call s:HL('jsFlowArgumentDef',              s:yellow,   '',         '')
call s:HL('jsFrom',                         s:purple,   '',         '')
call s:HL('jsImport',                       s:red,   '',         '')
call s:HL('jsExport',                       s:red,   '',         '')
call s:HL('jsExportDefault',                s:red,   '',         '')
call s:HL('jsFuncCall',                     s:blue,     '',         '')
call s:HL('jsFunction',                     s:purple,   '',         '')
call s:HL('jsGlobalObjects',                s:yellow,   '',         '')
call s:HL('jsGlobalNodeObjects',            s:yellow,   '',         '')
call s:HL('jsModuleAs',                     s:purple,   '',         '')
call s:HL('jsNull',                         s:orange,   '',         '')
call s:HL('jsStorageClass',                 s:purple,   '',         '')
call s:HL('jsTemplateBraces',               s:red,      '',         '')
call s:HL('jsTemplateExpression',           s:red,      '',         '')
call s:HL('jsThis',                         s:red,      '',         '')
call s:HL('jsUndefined',                    s:orange,   '',         '')

" JSON
call s:HL('jsonBraces',                     s:gray5,    '',         '')

" Less
call s:HL('lessAmpersand',                  s:red,      '',         '')
call s:HL('lessClassChar',                  s:yellow,   '',         '')
call s:HL('lessCssAttribute',               s:gray5,    '',         '')
call s:HL('lessFunction',                   s:blue,     '',         '')
call s:HL('lessVariable',                   s:purple,   '',         '')

" Markdown
call s:HL('markdownBold',                   s:yellow,   '',         'bold')
call s:HL('markdownCode',                   s:cyan,     '',         '')
call s:HL('markdownCodeBlock',              s:cyan,     '',         '')
call s:HL('markdownCodeDelimiter',          s:cyan,     '',         '')
call s:HL('markdownHeadingDelimiter',       s:green,    '',         '')
call s:HL('markdownHeadingRule',            s:gray4,    '',         '')
call s:HL('markdownId',                     s:purple,   '',         '')
call s:HL('markdownItalic',                 s:blue,     '',         'italic')
call s:HL('markdownListMarker',             s:orange,   '',         '')
call s:HL('markdownOrderedListMarker',      s:orange,   '',         '')
call s:HL('markdownRule',                   s:gray4,    '',         '')
call s:HL('markdownUrl',                    s:purple,   '',         '')
call s:HL('markdownUrlTitleDelimiter',      s:green,    '',         '')

" Ruby
call s:HL('rubyInterpolation',              s:cyan,     '',         '')
call s:HL('rubyInterpolationDelimiter',     s:indigo,   '',         '')
call s:HL('rubyRegexp',                     s:cyan,     '',         '')
call s:HL('rubyRegexpDelimiter',            s:indigo,   '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')

" Sass
call s:HL('sassAmpersand',                  s:red,      '',         '')
call s:HL('sassClassChar',                  s:yellow,   '',         '')
call s:HL('sassMixinName',                  s:blue,     '',         '')
call s:HL('sassVariable',                   s:purple,   '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
call s:HL('GitGutterAdd',                   s:green,    '',         '')
call s:HL('GitGutterChange',                s:yellow,   '',         '')
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')
call s:HL('GitGutterDelete',                s:red,      '',         '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete

" XML
call s:HL('xmlAttrib',                      s:yellow,   '',         '')
call s:HL('xmlEndTag',                      s:blue,     '',         '')
call s:HL('xmlTag',                         s:blue,     '',         '')
call s:HL('xmlTagName',                     s:blue,     '',         '')

" Neovim terminal colors
if has('nvim')
    let g:terminal_color_0 = s:gray1
    let g:terminal_color_1 = s:red
    let g:terminal_color_2 = s:green
    let g:terminal_color_3 = s:yellow
    let g:terminal_color_4 = s:blue
    let g:terminal_color_5 = s:purple
    let g:terminal_color_6 = s:cyan
    let g:terminal_color_7 = s:gray5
    let g:terminal_color_8 = s:gray3
    let g:terminal_color_9 = s:red
    let g:terminal_color_10 = s:green
    let g:terminal_color_11 = s:yellow
    let g:terminal_color_12 = s:blue
    let g:terminal_color_13 = s:purple
    let g:terminal_color_14 = s:cyan
    let g:terminal_color_15 = s:gray4
    let g:terminal_color_background = g:terminal_color_0
    let g:terminal_color_foreground = g:terminal_color_7
endif