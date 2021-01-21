"plugins"
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

"theme"
  set t_Co=256
  syntax on
  colorscheme gruvbox
  set bg=dark

"spaces and tabs"
  set softtabstop=2
  set shiftwidth=2
  set expandtab

"ui config"
  set number
  set ruler

"other"
  set hlsearch
  set ai
