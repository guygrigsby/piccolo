" Vim File
" Author: Guy J Grigsby <https://grigsby.dev>
" Version: 0.1.0
" Created: Wed Jan 20 13:34:03 2021
" Title:   piccolo.vim
" Summary:
"
if exists('g:piccololoaded')
  finish
endif
let g:piccololoaded=1

function! piccolo#Color(group, ...)
  let gui = 'hi ' . a:group
  let tui = gui

  if len(a:1)>0
    let gui .= ' guifg=' . a:1[0]
    let tui .= ' ctermfg=' . a:1[1]
  endif

  if a:0>1 && len(a:2)>0
    let gui .= ' guibg=' . a:2[0]
    let tui .= ' ctermbg=' .  a:2[1]
  endif

  if a:0 >= 3 && strlen(a:3)
    let gui .= ' gui=' . a:3
    let tui .= ' cterm=' . a:3
  endif

  execute gui
  execute tui
endfunction
