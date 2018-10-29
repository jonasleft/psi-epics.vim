if exists("b:current_syntax")
     finish
endif

syntax case ignore

"syntax region epicsString start=/\v"/ skip=/\v\\./ end=/\v"/ 
syntax keyword recordKeyword ao ai aai aao aSub bi bo calc calcout compress dfanout event
syntax keyword recordKeyword fanout histogram longin longout mbbi mbbiDirect mbbo mbboDirect
syntax keyword recordKeyword permissive sel seq state stringin stringout subArray sub waveform

syntax keyword epicsKeyword DESC DTYP OUT DEV

syntax keyword functionKeyword field record

syntax match epicsComment "\v#.*$"

"syntax match epicsOperator "\v\*"
"syntax match epicsOperator "\v/"
"syntax match epicsOperator "\v\+"
"syntax match epicsOperator "\v-"

syntax match booleanOperator "\v\"\zs(yes|no)\ze\""

" Match numbers, float, hex, exponential:
"syntax match epicsNumber "\v<\d+>" 
"syntax match epicsNumber "\v<\d+\.\d+>"
"syntax match epicsNumber "\v<0[xX][0-9a-fA-F]+>"
"syntax match epicsNumber "\v<\d+\.?\d*[eE][-\+]?\d+>"
syntax match epicsNumber "\v\"\zs[-]?\d+\.?\d*[eE]?[-\+]?\d*\ze\""
syntax match epicsNumber "\v\"\zs0[xX][0-9a-fA-F]+\ze\""

syntax match epicsMacro "\v\$\(.{-}\)"

"highlight link epicsString String
highlight link epicsKeyword Keyword
highlight link recordKeyword Type
highlight link booleanOperator Boolean
highlight link functionKeyword Function
highlight link epicsComment Comment
highlight link epicsOperator Comment
highlight link epicsNumber Number
highlight link epicsMacro Macro

let b:current_syntax = "epics-template"

