" Shell {{{
set shell=/bin/bash
" }}}

" Vundle {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" }}}

" Vundle Plugins {{{
Plugin '13k/vim-nginx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-misc'
" }}}

" Vundle {{{
call vundle#end()
filetype plugin indent on
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
