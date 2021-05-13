set nocompatible

" Formatting set encoding=utf-8
set tabstop=2 
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
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

" HTML Color code Highlighting
let g:Hexokinase_highlighters=["virtual"]

set nostartofline
set laststatus=2
set confirm
set number relativenumber
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F10>
set noshowmode 

" layout
set cmdheight=5
set laststatus=2
set ambiwidth=single

" airline colors and colorscheme
set termguicolors
let g:gruvbox_bold = 1
let g:gruvbox_transparent_bg = 0.5
" let g:gruvbox_hls_cursor = 1
let g:gruvbox_italicize_strings = 1
let g:gruvbox_italic = 1
let g:gruvbox_termcolors = 1
let g:gruvbox_invert_selection = 1
colorscheme gruvbox

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter="unique_tail_improved"
let g:airline#extensions#tabline#show_splits=0
let g:airline#extensions#tabline#show_buffers=1
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#denite#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#vimtex#enabled=1
let g:airline#extensions#vimcmake#enabled=1
let g:airline#extensions#whitespace#enabled=1
let g:airline_skip_empty_sections=1
let g:airline#extensions#whitespace#trailing_format='trailing[%s]'

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif
let g:airline_symbols.maxlinenr = ' col'
let g:airline_symbols.branch = ''
" let g:airline_right_alt_sep = " "
let g:airline_right_alt_sep = "|"
" let g:airline_left_alt_sep = ""
let g:airline_left_alt_sep = "|"
" let g:airline_right_sep = ""
let g:airline_right_sep = ""
let g:airline_left_sep = ""

" Setting weird filetypes
autocmd BufNewFile,BufRead .xprofile set filetype=xprofile
autocmd BufNewFile,BufRead *.fish set filetype=fish

" Setting comment strings
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType lua setlocal commentstring=--\ %s
autocmd FileType xprofile setlocal commentstring=#\ %s
autocmd FileType fish setlocal commentstring=#\ %s

" Setting Filetype Specific Colorcolumn
autocmd FileType python setlocal colorcolumn=80

" Remappings
nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <A-C> :colorscheme default<CR>
nnoremap <leader>c :set cursorline!<CR>
nnoremap <leader>n :set relativenumber!<CR>
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>
nnoremap <C-x> :bdelete<CR>

" Fuzzy Finding
nnoremap <silent><C-P> :call fzf#run({'sink': 'e', 'window':{'width': 0.9, 'height': 0.6}, 'options': ['--preview', 'bat --color=always --decorations=always --theme=gruvbox-dark {}']})<CR>
nnoremap <silent><C-B> :Buffers<CR>
nnoremap <silent><C-M> :Marks<CR>

" Resizing
nnoremap <A-j> :resize +3<CR>
nnoremap <A-k> :resize -3<CR>
nnoremap <A-h> :vertical resize -3<CR>
nnoremap <A-l> :vertical resize +3<CR>

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

" Extending text objects
let pairs = { ':' : ':',
            \ '.' : '.',
            \ ',' : ',',
            \ '/' : '/',
            \ '<bar>' : '<bar>',
            \ '_' : '_',
            \ }

for [key, value] in items(pairs)
  exec "nnoremap ci".key." T".key."ct".key
  exec "nnoremap ca".key." F".key."cf".key

  exec "nnoremap di".key." T".key."dt".key
  exec "nnoremap da".key." F".key."df".key
  
  exec "nnoremap vi".key." T".key."vt".key
  exec "nnoremap va".key." F".key."vf".key

  exec "nnoremap yi".key." T".key."yt".key
  exec "nnoremap ya".key." F".key."yf".key
endfor

" Filetype specific run commands
autocmd FileType python nnoremap <leader>x :!python % <CR> 
autocmd FileType tex nnoremap <leader>x :w <CR>:! pdflatex -interaction nonstopmode % <CR>

" UltiSnips Config
let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Quickfix lists
nnoremap <C-Q>:call ToggleQFlist(0)<CR>
nnoremap :cn :cnext<CR>
nnoremap :cp :cprev<CR>
nnoremap :ln :lnext<CR>
nnoremap :lp :lprev<CR>

" Syntastic Options
let g:syntastic_python_checkers = ['flake8', 'pydocstyle']
let g:syntastic_python_flake8_args = "--ignore=E501,W504"
let g:syntastic_python_pydocstyle_args = "--convention=google"
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_aggregate_errors = 1


nnoremap cs :SyntasticCheck<CR>

