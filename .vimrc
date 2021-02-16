syntax on
set tabstop=2 
set shiftwidth=2
set expandtab
set nocompatible
set hidden
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set noshowmode 

" Layout
set cmdheight=5
set laststatus=2

" Lightline colors and colorscheme
colorscheme darcula
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

