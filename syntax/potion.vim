if exists("b:current_syntax")
  finish
endif

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return
syntax keyword potionFunction print join string

highlight link potionKeyword Keyword
highlight link potionFunction Function

syntax match potionComment "\v#.*$"
highlight link potionComment Comment

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="
syntax match potionOperator "\v\="

highlight link potionOperator Operator

syntax match potionNumber "\v-?\d+"
syntax match potionNumber "\v-?\d+\.\d+"
syntax match potionNumber "\v-?0x[0-9a-f]+"
syntax match potionNumber "\v-?\d+e[+-]\d+"
syntax match potionNumber "\v-?\d+\.\d+e[+-]\d+"

highlight link potionNumber Number

let b:current_syntax = "potion"
