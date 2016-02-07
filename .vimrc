" Vundle {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" }}}

" Vundle Plugins {{{
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin '13k/vim-nginx'
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

" Lines {{{
set number
" }}}

" Syntax {{{
syntax on
" }}}

" Ack {{{
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
" }}}
