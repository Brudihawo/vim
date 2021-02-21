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
let g:rainbow_active=1

set nostartofline
set laststatus=2
set confirm
set number relativenumber
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set noshowmode 

" layout and resizing
set cmdheight=5
set laststatus=2
set ambiwidth=single

" Highlighting Cursor 
highlight CursorLineNR ctermbg=darkgray ctermfg=white
highlight CursorLine ctermbg=white ctermfg=black
" Highlighting Diff
highlight DiffAdd ctermfg=black ctermbg=darkgreen
highlight DiffDelete ctermfg=Red ctermbg=black
highlight DiffChange ctermfg=black ctermbg=darkblue
highlight DiffText ctermfg=yellow ctermbg=darkblue

" airline colors and colorscheme
let g:airline_theme='light'
" colorscheme darcula
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter="unique_tail_improved"
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#denite#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#vimtex#enabled=1
let g:airline#extensions#vimcmake#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:airline_skip_empty_sections=1

if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif
let g:airline_symbols.maxlinenr = ' col'
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr=''

autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s

" Remappings
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <A-C> :colorscheme default<CR>
nnoremap <Bar>c :set cursorline!<CR>
nnoremap <Bar>n :set relativenumber!<CR>
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>
nnoremap <C-x> :bdelete<CR>

" Window Resizing
nnoremap <silent> <A-J> :resize +3<CR>
nnoremap <silent> <A-K> :resize -3<CR>
nnoremap <silent> <A-H> :vertical resize -3<CR>
nnoremap <silent> <A-L> :vertical resize +3<CR>

"" Denite
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
