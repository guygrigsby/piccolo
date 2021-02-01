" =============================================================================
" Filename: autoload/lightline/colorscheme/16color.vim
" Author: itchyny, jackno
" License: MIT License
" =============================================================================

let s:none = [ 'NONE', 'NONE' ]
let s:ultrablack = [ '#000000', 0 ]
let s:black = [ '#121212', 233 ]
let s:grey = [ '#626262', 241 ]
let s:lightgrey = [ '#d0d0d0', 252 ]
let s:white = [ '#ffffff', 231 ]
let s:teal = [ '#00afd7', 38 ]
let s:hotpink = [ '#ff5fd7', 206 ]
let s:mediumpurple = ['#af5fff', 135]
let s:purple = [ '#8787d7', 104 ]
let s:verypurple = ['#af00ff',169]
let s:darkpurple = [ '#380549', 128 ]
let s:lightpink = [ '#ffd7ff', 225 ]
let s:lightcyan = [ '#cff1ef', 230 ]
let s:lightgreen = [ '#cfdac8', 230 ]
let s:pink = [ '#d7005f', 161 ]
let s:steelblue = [ '#5fd7ff', 81 ]
let s:blue = [ '#8470FF', 99 ]
let s:violet = [ '#eeccff', 177 ]
let s:plum = [ '#d7afff', 183 ]
let s:red = [ '#ff0000', 196 ]
let s:warmpurple = [ '#DA10AC', 165 ]
let s:fuchsia = [ '#FF00FF', 13 ]

" Basics:
let s:foreground = '#4d4d4c'
let s:background = '#F5F5F5'
let s:window = '#efefef'
let s:status = s:aqua
let s:error = '#ffafdf'

" Tabline:
let s:tabline_bg = s:warmpurple
let s:tabline_active_fg = s:foreground
let s:tabline_active_bg = s:window
let s:tabline_inactive_fg = s:background
let s:tabline_inactive_bg = s:aqua

" Statusline:
let s:statusline_active_fg = s:window
let s:statusline_active_bg = s:navy
let s:statusline_inactive_fg = s:foreground
let s:statusline_inactive_bg = '#dadada'


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:white, s:verypurple ], [ s:white, s:gray ] ]
let s:p.normal.middle = [ [ s:silver, s:black ] ]
let s:p.normal.right = [ [ s:white, s:blue ], [ s:white, s:gray ] ]
let s:p.normal.error = [ [ s:black, s:red ] ]
let s:p.normal.warning = [ [ s:black, s:hotpink ] ]
let s:p.inactive.left =  [ [ s:silver, s:gray ], [ s:gray, s:black ] ]
let s:p.inactive.middle = [ [ s:silver, s:black ] ]
let s:p.inactive.right = [ [ s:silver, s:gray ], [ s:gray, s:black ] ]
let s:p.insert.left = [ [ s:white, s:fuchsia ], [ s:white, s:gray ] ]
let s:p.insert.right = copy(s:p.insert.left)
let s:p.replace.left = [ [ s:white, s:red ], [ s:white, s:gray ] ]
let s:p.replace.right = copy(s:p.replace.left)
let s:p.visual.left = [ [ s:white, s:purple ], [ s:white, s:gray ] ]
let s:p.visual.right = copy(s:p.visual.left)
let s:p.tabline.left = [ [ s:silver, s:black ] ]
let s:p.tabline.tabsel = copy(s:p.normal.right)
let s:p.tabline.middle = [ [ s:silver, s:black ] ]
let s:p.tabline.right = copy(s:p.normal.right)

let g:lightline#colorscheme#piccolo#palette = s:p
