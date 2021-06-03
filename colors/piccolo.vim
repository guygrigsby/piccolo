" Vim color File
" Author: Guy J Grigsby <https://grigsby.dev>
" License: MIT License
" Created: 21:06:35 05/10/2004
" Title:   piccolo.vim
" Summary: The Piccolo Theme
"
hi clear
syntax reset
set background=dark

let s:none = [ 'NONE', 'NONE' ]
let s:ultrablack = [ '#000000', 0 ]
let s:black = [ '#212121', 233 ]
let s:grey = [ '#626262', 241 ]
let s:lightgrey = [ '#d0d0d0', 252 ]
let s:white = [ '#ffffff', 231 ]
let s:teal = [ '#3fd9fc', 38 ]
let s:hotpink = [ '#ff5fd7', 206 ]
let s:mediumpurple = ['#af5fff', 135]
let s:purple = [ '#8787d7', 104 ]
let s:verypurple = ['#af00ff',169]
let s:darkpurple = [ '#380549', 128 ]
let s:lightpink = [ '#ffd7ff', 225 ]
let s:lightcyan = [ '#cff1ef', 230 ]
let s:lightgreen = [ '#cfdac8', 230 ]
let s:pink = [ '#FFC0CB', 175 ]
let s:steelblue = [ '#5fd7ff', 81 ]
let s:blue = [ '#8470FF', 99 ]
let s:violet = [ '#eeccff', 177 ]
let s:plum = [ '#d7afff', 183 ]
let s:glowgreen = ['#bef081', 10]
let s:warmpurple = [ '#DA10AC', 165 ]
let s:fuchsia = [ '#ff63ff', 13 ]


call piccolo#Color('vimCommand', s:hotpink)
call piccolo#Color('Normal', s:teal, s:ultrablack)
call piccolo#Color('CursorLine', s:white, s:warmpurple)
call piccolo#Color('CursorLineNr', s:white, s:warmpurple)
call piccolo#Color('Keyword', s:hotpink)
call piccolo#Color('Boolean', s:mediumpurple)
call piccolo#Color('Character', s:mediumpurple)
call piccolo#Color('Number', s:mediumpurple)
call piccolo#Color('String', s:white)
call piccolo#Color('Float', s:warmpurple)
call piccolo#Color('Conditional', s:steelblue, s:ultrablack)
call piccolo#Color('Constant', s:mediumpurple, s:ultrablack)
call piccolo#Color('Cursor', s:white, s:ultrablack)
call piccolo#Color('Debug', s:ultrablack, s:steelblue)
call piccolo#Color('Define', s:steelblue, s:none)
call piccolo#Color('Delimiter', s:violet)
call piccolo#Color('DiffAdd', s:ultrablack, s:teal)
call piccolo#Color('DiffDelete', s:white, s:black)
call piccolo#Color('DiffChange', s:hotpink, s:ultrablack)
call piccolo#Color('DiffText', s:white, s:ultrablack)

call piccolo#Color('Directory', s:purple, s:ultrablack)
call piccolo#Color('Error',  s:glowgreen)
call piccolo#Color('ErrorMsg',  s:glowgreen)
call piccolo#Color('Exception', s:warmpurple)
call piccolo#Color('FoldColumn', s:white, s:darkpurple)
call piccolo#Color('Folded', s:white, s:darkpurple)
call piccolo#Color('Function', s:teal)
call piccolo#Color('Identifier', s:warmpurple)
call piccolo#Color('Ignore', s:ultrablack, s:teal)
call piccolo#Color('Ignore', s:grey, s:purple)
call piccolo#Color('Label', s:verypurple) 
call piccolo#Color('Macro', s:white)
call piccolo#Color('MatchParen', s:pink, s:none)
call piccolo#Color('MoreMsg', s:hotpink)
call piccolo#Color('Operator', s:fuchsia)

" complete menu
call piccolo#Color('Pmenu', s:plum, s:ultrablack)
call piccolo#Color('PmenuSel', s:darkpurple, s:lightgrey)
call piccolo#Color('PmenuSbar', s:pink, s:darkpurple)
call piccolo#Color('PmenuThumb', s:hotpink)
call piccolo#Color('PreCondit', s:hotpink, s:ultrablack)
call piccolo#Color('PreProc', s:hotpink)
call piccolo#Color('Question', s:hotpink)
call piccolo#Color('Repeat', s:hotpink)
call piccolo#Color('Search', s:ultrablack, s:warmpurple)
" marks column
call piccolo#Color('SignColumn', s:hotpink, s:ultrablack)
call piccolo#Color('Special', s:fuchsia)
call piccolo#Color('SpecialChar', s:fuchsia, s:ultrablack)
call piccolo#Color('SpecialComment', s:fuchsia, s:ultrablack)
call piccolo#Color('SpecialKey', s:fuchsia)
call piccolo#Color('SpellBad', s:white)
call piccolo#Color('SpellCap', s:none, s:darkpurple)
call piccolo#Color('SpellLocal', s:none, s:darkpurple)
call piccolo#Color('SpellRare', s:none, s:none, 'reverse')
call piccolo#Color('Statement', s:warmpurple)
call piccolo#Color('StatusLine', s:grey, s:teal)
call piccolo#Color('StatusLineNC', s:ultrablack, s:grey)
call piccolo#Color('StorageClass', s:steelblue)
call piccolo#Color('Structure', s:warmpurple)
call piccolo#Color('Tag', s:steelblue)
call piccolo#Color('Title', s:hotpink)
call piccolo#Color('Todo', s:white, s:ultrablack)
call piccolo#Color('Type', s:white)
call piccolo#Color('TypeDef', s:steelblue, s:ultrablack)
call piccolo#Color('Underline', s:fuchsia, s:none, 'underline')
call piccolo#Color('VertSplit', s:warmpurple, s:none)
call piccolo#Color('VisualNOS', s:ultrablack, s:grey)
call piccolo#Color('Visual', s:ultrablack, s:grey)
call piccolo#Color('WarningMsg', s:white, s:teal)
call piccolo#Color('WildMenu', s:white, s:darkpurple)
call piccolo#Color('Comment', s:grey)
call piccolo#Color('CursorColumn', s:ultrablack, s:hotpink)
call piccolo#Color('ColorColumn', s:ultrablack, s:warmpurple)
call piccolo#Color('LineNr', s:grey, s:ultrablack)
call piccolo#Color('NonText', s:verypurple)
call piccolo#Color('Include', s:fuchsia)

hi link Define    Include
hi link Macro     Include
hi link PreCondit Include

let g:colors_name = "Piccolo"
let colors_name   = "Piccolo"
