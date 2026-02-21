" Shell {{{
set shell=/bin/bash
" }}}

" Minpac {{{
function! PackInit() abort
    packadd minpac
    call minpac#init()

    " Minpac Opt Plugins {{{
    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
    " }}}

    " Minpac Start Plugins {{{
    call minpac#add('altercation/vim-colors-solarized')
    call minpac#add('jiangmiao/auto-pairs')
    call minpac#add('mileszs/ack.vim')
    call minpac#add('tpope/vim-unimpaired')
    " }}}
endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

function! PackList(...)
    call PackInit()
    return join(sort(keys(minpac#getpluglist())), "\n")
endfunction

command! -nargs=1 -complete=custom,PackList
    \ PackOpenDir call PackInit() | call term_start(&shell,
    \    {'cwd': minpac#getpluginfo(<q-args>).dir,
    \     'term_finish': 'close'})
" }}}

" Spaces & Tabs {{{
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set modelines=1
set autoindent
" }}}

" Clipboard {{{
" Keep Vim's default register behavior
" Use Ctrl+C in visual mode to copy to system clipboard
vnoremap <C-c> "+y
" }}}

" Backspace {{{
set backspace=2 " make backspace work like most other programs
" }}}

" Cursor {{{
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" }}}

" Lines {{{
set number
" }}}

" Syntax {{{
syntax enable
set background=dark
colorscheme solarized
set t_Co=256
" }}}

" fzf {{{
set rtp+=/usr/local/opt/fzf
" }}}

" Ack {{{
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
" }}}
