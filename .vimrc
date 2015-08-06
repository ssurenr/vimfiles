" # This file is being maintained by Puppet.
" # DO NOT EDIT

" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set nocompatible
syntax enable
set background=dark
set fo=tcq

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Show me a ruler
set ruler

" ****************************************************************************
" Misc Stuff
" ****************************************************************************
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'altercation/vim-colors-solarized'
Plugin 'evanmiller/nginx-vim-syntax'


call vundle#end()  
colorscheme solarized
filetype plugin indent on

au BufRead,BufNewFile *.pp set filetype=puppet
