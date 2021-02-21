set nocompatible

" Formatting
set encoding=utf-8
set tabstop=2 
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set foldmethod=syntax
set foldnestmax=3
set display+=lastline
set linebreak
set wrap

" NERDTree Settings
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeDirArrows=">"

" search
set hlsearch
set smartcase

" highlighting and Readability
syntax on
set ruler
set showcmd
set autoindent
set cursorline
let g:indent_guides_enable_on_vim_startup=1

set nostartofline
set laststatus=2
set confirm
set number relativenumber
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set noshowmode 

" layout
set cmdheight=5
set laststatus=2

" airline colors and colorscheme
colorscheme darcula
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter="unique_tail_improved"
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif
let g:airline_symbols.maxlinenr = ' col'
let g:airline_symbols.branch = ''

" Commentstrings
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s

" Remappings
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <A-C> :colorscheme default<CR>
nnoremap <Bar>c :set cursorline!<CR>
nnoremap <Bar>n :set relativenumber!<CR>

""" Wintabs
nnoremap <A-k> :WintabsNext<CR>
nnoremap <A-j> :WintabsPrevious<CR>
nnoremap <A-x> :WintabsClose<CR>
