call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'jordcart/seoul256.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'valloric/youcompleteme'

call plug#end()

"theme"
  set t_Co=256
  syntax on
  set bg=dark
  let g:seoul256_background = 234 
  colorscheme seoul256 
  let g:lightline = { 'colorscheme': 'seoul256', }

"spaces and tabs"
  set softtabstop=4
  set tabstop=4
  set shiftwidth=4
  set textwidth=120
  set expandtab
  set autoindent

"ui config"
  set number
  set ruler
  set nu rnu "relative line numbering"

"other"
  set hlsearch
  set timeoutlen=1000
  set ttimeoutlen=5
  set ai

"rebinds"

"ctrl-L to clear search highlighting"
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"syntastic"
let g:syntastic_c_checkers=['gcc', 'make']

"auto closing {}"
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" air-line
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" fzf
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

"ycm"
let g:ycm_show_diagnostics_ui = 0
