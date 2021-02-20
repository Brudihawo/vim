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
let g:indent_guides_enable_on_vim_startup=1
"set hidden
set nostartofline
set ruler
set laststatus=2
set confirm
set number relativenumber
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set noshowmode 


" layout
set cmdheight=5
set laststatus=2

" lightline colors and colorscheme
colorscheme darcula
set cursorline
let g:lightline = {
  \ 'active': {
  \   'left': [['mode', 'paste'],
  \            ['gitbranch', 'readonly', 'filename', 'modified']]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name',
  \ },
  \ 'colorscheme': 'darcula',
  \ }

" Commentstrings
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s

" Remappings
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <A-Left> :tabprev<CR>
nnoremap <A-Right> :tabnext<CR>

