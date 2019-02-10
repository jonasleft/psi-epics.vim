if exists("b:current_syntax")
     finish
endif

syntax case ignore

"syn region RecordBlock start='{' end='}' 
"syntax region epicsString start=/\v"/ skip=/\v\\./ end=/\v"/ 
syntax keyword kRecords ao ai aai aao aSub bi bo calc calcout compress dfanout event contained
syntax keyword kRecords fanout histogram longin longout mbbi mbbiDirect mbbo mbboDirect contained
syntax keyword kRecords permissive sel seq state stringin stringout subArray sub waveform contained

syntax keyword kFunctions record field contained

syntax keyword kFields DESC DTYP OUT DEV PINI DRVH CALC contained
syntax keyword kFields SCAN PINI PHAS EVNT PRIO DISV DISA SDIS PROC DISS contained 
syntax keyword kFields LSET LCNT PACT FLNK INP DTYP LOPR PREC HOPR ASLO contained
syntax keyword kFields RVAL VAL SIMM SIML SVAL SIOL SIMS OUT DTYP VAL contained
syntax keyword kFields OVAL RVAL RBV DOL OMSL OIF SIMM contained
syntax keyword kFields SIML SIOL SIMS IVOA IVOV contained
" :help syn-contained
syntax keyword kTodo TODO contained 
syntax match epicsComment "\v#.*$" contains=kTodo


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

syntax match mField "\vfield.*\(.*," contains=kFields,kFunctions 
syntax match mRecord "\vrecord.*\(.*," contains=kRecords,kFunctions

"highlight link epicsString String
highlight link epicsKeyword Keyword
highlight link kRecords Type
highlight link booleanOperator Boolean
highlight link kFunctions Function
highlight link recKeyword Function
highlight link epicsComment Comment
highlight link kTodo Todo
highlight link kFields Keyword
highlight link epicsOperator Comment
highlight link epicsNumber Number
highlight link epicsMacro Macro

let b:current_syntax = "epics-template"

