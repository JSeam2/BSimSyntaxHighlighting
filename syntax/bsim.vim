" Simple BSIM syntax file
" Author: JSeam

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword bsimKeyword BEQ BF BNE BT BR skipwhite 
syn keyword bsimKeyword JMP LD ST MOVE CMOVE skipwhite
syn keyword bsimKeyword PUSH POP ALLOCATE DEALLOCATE skipwhite
syn keyword bsimKeyword ADD ADDC AND ANDC CMPEQ skipwhite
syn keyword bsimKeyword CMPEQC CMPLE CMPLEC CMPLT CMPLTC skipwhite
syn keyword bsimKeyword DIV DIVC LDR MUL MULC OR ORC SHL SHLC SHR skipwhite
syn keyword bsimKeyword SHRC SRA SRAC SUB SUBC XOR XORC skipwhite
syn keyword bsimKeyword CALL RTN HALT LONG

syn match include "\.include" 
syn match align "\.align" 
syn match ascii "\.ascii" 
syn match text "\.text" 
syn match breakpoint "\.breakpoint"
syn match protect "\.protect"
syn match unprotect "\.unprotect"
syn match options "\.options"
syn match pcheckoff "\.pcheckoff"
syn match tcheckoff "\.tcheckoff"
syn match verify "\.verify"
	
syn match comment "|.*" 

syn match register "R[0-9]*"

syn match identifier ".*\:"

"Set up syntax highlighting
let b:current_syntax = "bsim"

hi def link bsimKeyword Keyword

hi def link include Type
hi def link align Type
hi def link ascii Type
hi def link text Type
hi def link breakpoint Type
hi def link protect Type
hi def link unprotect Type
hi def link options Type
hi def link pcheckoff Type
hi def link tcheckoff Type
hi def link verify Type

hi def link register Constant

hi def link identifier Statement 

hi def link comment Comment
