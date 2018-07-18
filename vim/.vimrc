" Shell {{{
set shell=/bin/bash
" }}}

" Minpac {{{
packadd minpac
call minpac#init()
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
" }}}

" Minpac Start Plugins {{{
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('mileszs/ack.vim')
call minpac#add('tpope/vim-unimpaired')
" }}}

" Minpac Opt Plugins {{{
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
" }}}

" Spaces & Tabs {{{
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set modelines=1
set autoindent
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

" Ack {{{
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
" }}}
