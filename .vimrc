" Paul Claret
" VimRC



call pathogen#infect()
syntax on
filetype plugin indent on

let g:airline#extensions#tabeline#enabled=1

" Cursor visibility and general UI
set number
set cursorline
set nocompatible


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


set relativenumber
set noswapfile

" Keybindings
let mapleader=" "
nnoremap <leader>c :nohlsearch<CR>
nnoremap Y y$







" Window navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

nnoremap <silent> <C-S-Left>  :wincmd H<CR>
nnoremap <silent> <C-S-Right> :wincmd L<CR>
nnoremap <silent> <C-S-Up>    :wincmd K<CR>
nnoremap <silent> <C-S-Down>  :wincmd J<CR>

nnoremap <Esc>x :close<CR>


""" Tab navigation
" nnoremap <Esc>e gt
" nnoremap <Esc>a gT
" nnoremap <Esc>& 1gt
" nnoremap <Esc>é 2gt
" nnoremap <Esc>" 3gt
" nnoremap <Esc>' 4gt
" nnoremap <Esc>( 5gt
nnoremap <M-e> gt
nnoremap <M-a> gT
nnoremap <M-&> 1gt
nnoremap <M-é> 2gt
nnoremap <M-"> 3gt
nnoremap <M-'> 4gt
nnoremap <M-(> 5gt

" Open file in new tab
nnoremap <space>e :tabe 
nnoremap <space>t :tabnew 








""" Plugins
"  Tagbar
nmap <F2> :TagbarToggle<CR>

" Nerd tree shortcuts
noremap <space>n :NERDTreeFocus<CR>
nnoremap <C-e> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <space>pv :Ex<CR>

" CtrlP
nnoremap <leader>ff :CtrlP<CR>
nnoremap <leader>fr :CtrlPMRU<CR>






set mouse=a
autocmd VimEnter * NERDTree | wincmd p

" Colors / themes
colorscheme everforest
set bg=dark
set linebreak
set t_vb=
