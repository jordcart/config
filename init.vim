call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'jordcart/seoul256.vim'

call plug#end()


"theme"
  set t_Co=256
  syntax on
  colorscheme seoul256 
  let g:seoul256_background = 234
  set bg=dark
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
  set noshowmode "removes --insert-- --normal-- etc."

"other"
  set hlsearch
  set timeoutlen=1000 ttimeoutlen=0
  set ai

"rebinds"

"ctrl-L to clear search highlighting"
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"syntastic"
let g:syntastic_c_checkers=['gcc', 'make']
let g:syntastic_python_checkers=['pyenv']

" fzf
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
