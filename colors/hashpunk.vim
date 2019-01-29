" Name:         hashpunk
" Author:       abnt713
" Maintainer:   abnt713
" License:      MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hashpunk'
set background=dark

" Color palette
let s:clear           =  ['NONE', 'NONE'   ]
let s:DeepSkyBlue3    =  ['31'  , '#0087af']
let s:Purple4         =  ['55'  , '#5f00af']
let s:Purple3         =  ['56'  , '#5f00ff']
let s:SteelBlue1      =  ['81'  , '#5fd7ff']
let s:DarkMagenta     =  ['90'  , '#870087']
let s:SkyBlue1        =  ['117' , '#87afff']
let s:DarkViolet      =  ['128' , '#af00d7']
let s:Magenta2        =  ['165' , '#d700ff']
let s:Red1            =  ['196' , '#ff0000']
let s:Magenta1        =  ['201' , '#ff00ff']
let s:HotPink         =  ['206' , '#ff5fd7']
let s:MediumOrchid1   =  ['207' , '#ff5faf']
let s:Yellow1         =  ['226' , '#ffff00']
let s:MistyRose1      =  ['224' , '#ffd7ff']
let s:Grey7           =  ['233' , '#121212']
let s:Grey42          =  ['242' , '#6c6c6c']
let s:Grey54          =  ['245' , '#505050']
let s:Grey66          =  ['248' , '#a8a8a8']
let s:RadicalRed      =  ['197' , '#ff3366']
let s:RadicalRed1     =  ['198' , '#FE0040']
let s:DarkGrey     =  ['198' , '#202020']


" Text style 
let s:italic      =   'italic'
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'

" Helper function to set up highlight executions
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg[0]
    \ . " ctermbg="   . a:bg[0]
    \ . " cterm="     . a:style
    \ . " guifg="     . a:fg[1]
    \ . " guibg="     . a:bg[1]
    \ . " gui="       . a:style
endfunction

" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html
"
call s:highlight('Comment',                   s:DeepSkyBlue3,       s:clear,    s:italic    )
call s:highlight('Constant',                  s:RadicalRed,         s:clear,    s:none      )
call s:highlight('String',                    s:DarkGrey,        s:clear,    s:none      )
call s:highlight('Character',                 s:MediumOrchid1,      s:clear,    s:none      )
call s:highlight('Number',                    s:RadicalRed,         s:clear,    s:none      )      
call s:highlight('Boolean',                   s:RadicalRed1,        s:clear,    s:none      )
call s:highlight('Float',                     s:RadicalRed,         s:clear,    s:none      )
call s:highlight('Identifier',                s:RadicalRed,         s:clear,    s:none      )
call s:highlight('Function',                  s:RadicalRed,            s:clear,    s:none      )
call s:highlight('Statement',                 s:RadicalRed,      s:clear,    s:bold      )
call s:highlight('Conditional',               s:RadicalRed1,           s:clear,    s:bold      )
call s:highlight('Repeat',                    s:RadicalRed1,           s:clear,    s:bold      )
call s:highlight('Label',                     s:RadicalRed1,           s:clear,    s:bold      )       
call s:highlight('Operator',                  s:RadicalRed,            s:clear,    s:none      )
call s:highlight('Keyword',                   s:RadicalRed,            s:clear,    s:none      )
call s:highlight('Exception',                 s:Magenta1,           s:clear,    s:italic    )
call s:highlight('PreProc',                   s:Grey54,             s:clear,    s:italic    )
call s:highlight('Include',                   s:Purple4,            s:clear,    s:italic    )
call s:highlight('Define',                    s:RadicalRed,           s:clear,    s:italic    )
call s:highlight('Macro',                     s:HotPink,            s:clear,    s:italic    )
call s:highlight('PreCondit',                 s:Purple4,            s:clear,    s:italic    )
call s:highlight('Type',                      s:MediumOrchid1,      s:clear,    s:bold      )
call s:highlight('StorageClass',              s:RadicalRed,            s:clear,    s:bold      )
call s:highlight('Structure',                 s:RadicalRed,            s:clear,    s:bold      )
call s:highlight('Typedef',                   s:RadicalRed,            s:clear,    s:bold      )
call s:highlight('Special',                   s:Grey66,             s:clear,    s:none      )
call s:highlight('SpecialChar',               s:MediumOrchid1,      s:clear,    s:none      )
call s:highlight('Delimiter',                 s:DeepSkyBlue3,       s:clear,    s:none      )
call s:highlight('SpecialComment',            s:Grey54,             s:clear,    s:none      )
call s:highlight('Debug',                     s:Red1,               s:clear,    s:none      )
call s:highlight('Underlined',                s:Grey54,             s:clear,    s:underline )
call s:highlight('Error',                     s:Red1,               s:clear,    s:underline )
call s:highlight('Todo',                      s:Yellow1,            s:clear,    s:none      )
call s:highlight('Directory',                 s:RadicalRed,         s:clear,    s:bold      )
call s:highlight('CursorLine',                s:Grey42,         s:clear,    s:bold      )


" Interface highlighting
call s:highlight('Normal',                    s:clear,              s:Grey7,    s:none      )
call s:highlight('Visual',                    s:clear,              s:Grey42,   s:none      )
call s:highlight('Cursor',                    s:Grey66,             s:clear,    s:none      )
call s:highlight('LineNr',                    s:MistyRose1,         s:clear,    s:none      )
call s:highlight('CursorLineNr',              s:DarkMagenta,        s:clear,    s:italic    )


" Java syntax highlighting
call s:highlight('javaParen',                 s:DarkMagenta,        s:clear,    s:none      )
call s:highlight('javaCommentTitle',          s:DeepSkyBlue3,       s:clear,    s:none      )
call s:highlight('javaDocParam',              s:DeepSkyBlue3,       s:clear,    s:none      )
call s:highlight('javaDocTags',               s:DeepSkyBlue3,       s:clear,    s:none      )
call s:highlight('javaScopeDecl',             s:Grey66,             s:clear,    s:none      )
call s:highlight('javaStorageClass',          s:MediumOrchid1,      s:clear,    s:none      )


" Python syntax highlighting
call s:highlight('pythonFunction',            s:Grey66,             s:clear,    s:none      )
call s:highlight('pythonBuiltin',             s:Grey66,             s:clear,    s:italic    )


" Vimscript syntax highlighting
call s:highlight('vimOption',                 s:DarkViolet,         s:clear,     s:none     )


" *NOTE*
"
" The following groups are plug specific and would require the following plugs
" from github in order for the groups to work.
"

" Elm syntax highlighting
" Requires plug: ElmCast/Magenta2-vim
"
call s:highlight('Magenta2TypeDef',           s:MediumOrchid1,      s:clear,    s:bold      )
call s:highlight('Magenta2Alias',             s:Grey66,             s:clear,    s:none      )
call s:highlight('Magenta2TopLevelDecl',      s:SkyBlue1,           s:clear,    s:bold      )
call s:highlight('Magenta2Braces',            s:DarkMagenta,        s:clear,    s:none      )


" Elixir syntax highlighting
" Requires plug: elixir-editors/vim-elixir
"
call s:highlight('elixirAlias',               s:Magenta2,           s:clear,    s:italic    )
call s:highlight('elixirDefine',              s:MediumOrchid1,      s:clear,    s:none      )
call s:highlight('elixirBlockDefinition',     s:MediumOrchid1,      s:clear,    s:none      )
call s:highlight('elixirFunctionDeclaration', s:Grey66,             s:clear,    s:none      )


" GOLang syntax highlighting
" Requires plug: fatih/vim-go
"
call s:highlight('goPackage',                 s:Magenta2,           s:clear,    s:italic    )
call s:highlight('goImport',                  s:Purple4,            s:clear,    s:italic    )


" Rust syntax highlighting
" Requires plug: rust-lang/rust.vim
"
call s:highlight('rustMacro',                 s:MediumOrchid1,      s:clear,    s:none      )
