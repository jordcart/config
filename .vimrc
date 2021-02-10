call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

"theme"
  set t_Co=256
  syntax on
  colorscheme gruvbox 
  set bg=dark

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
  set timeoutlen=50
  set ai

"rebinds"

"ctrl-L to clear search highlighting"
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

"syntastic"
let g:syntastic_c_checkers=['gcc', 'make']

" air-line
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" fzf
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

