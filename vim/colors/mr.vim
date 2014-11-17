set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mr"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag
hi link htmlLink                    none

highlight Cursor                    ctermfg=0 ctermbg=15	
highlight CursorLine                ctermbg=233 cterm=NONE
                                    
highlight Comment                   ctermfg=59
highlight Constant                  ctermfg=167
highlight Error                     ctermfg=221   ctermbg=88
highlight Function                  ctermfg=167   cterm=NONE
highlight Identifier                ctermfg=73    cterm=NONE
highlight PreCondit                 ctermfg=173   cterm=NONE
highlight Keyword                   ctermfg=173   cterm=NONE
highlight LineNr                    ctermfg=159
highlight Number                    ctermfg=76
highlight PreProc                   ctermfg=255
highlight Search                    ctermfg=NONE  ctermbg=235 cterm=underline
highlight Statement                 ctermfg=255   cterm=NONE
highlight String                    ctermfg=67
highlight Title                     ctermfg=15
highlight Type                      ctermfg=167   cterm=NONE
highlight Visual                    ctermbg=60

highlight DiffAdd                   ctermfg=7     ctermbg=71
highlight DiffDelete                ctermfg=7     ctermbg=52
highlight Special                   ctermfg=167 
                                    
highlight pythonBuiltin             ctermfg=73    cterm=NONE
highlight rubyBlockParameter        ctermfg=15
highlight rubyClass                 ctermfg=15
highlight rubyConstant              ctermfg=140
highlight rubyInstanceVariable      ctermfg=189
highlight rubyInterpolation         ctermfg=107
highlight rubyLocalVariableOrMethod ctermfg=189
highlight rubyPredefinedConstant    ctermfg=167
highlight rubyPseudoVariable        ctermfg=221
highlight rubyStringDelimiter       ctermfg=67
                                    
highlight xmlTag                    ctermfg=179
highlight xmlTagName                ctermfg=179
highlight xmlEndTag                 ctermfg=179
                                    
highlight mailSubject               ctermfg=107
highlight mailHeaderKey             ctermfg=221
highlight mailEmail                 ctermfg=107   cterm=underline
                                    
highlight SpellBad                  ctermfg=160   ctermbg=NONE cterm=underline
highlight SpellRare                 ctermfg=168   ctermbg=NONE cterm=underline
highlight SpellCap                  ctermfg=189   ctermbg=NONE cterm=underline
highlight MatchParen                ctermfg=15    ctermbg=23
