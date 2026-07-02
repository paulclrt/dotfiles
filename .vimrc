filetype on
filetype plugin on
filetype indent on

" Cursor visibility and general UI
set number
set cursorline
set nocompatible

" Colors / themes
colo desert
set linebreak
set t_vb=

" Tabulation
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set mouse=a


" Search 
set scrolloff=10
set nobackup
set incsearch
set ignorecase
set showmatch
set hlsearch

" Cmd
set showcmd
set showmode
set history=1000

" autocomplete
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" Keybindings
let mapleader=","
nnoremap <leader>\ :nohlsearch<CR>
"nnoremap <silent> <leader>p :%w !lp<CR>


nnoremap <space>fp :!grep -Rni 
nnoremap <space>ff :!find -type f -name 
nnoremap <space> :
nnoremap Y y$

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><




