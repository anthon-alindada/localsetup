" Default
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Vim color status
set t_Co=256
set t_ut=

" Set leader
let mapleader=','

" Line number
set number relativenumber

" Syntax enable
syntax enable
syntax on

" No swap file
set noswapfile

" Set not wrap
set nowrap

" Autoindent
" set autoindent
" Set ruler
set ruler

" Tab stop & Shift width
set tabstop=4
set shiftwidth=4

" Expand tab & Soft tabstops
set expandtab
set softtabstop=4

" Search
" set hlsearch
set incsearch
set ignorecase
set smartcase

" Set tab space to 2 for javascript
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab

" Set tab space to 2 for html
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab

" Set max line for python
autocmd FileType python set colorcolumn=79

" Performance and buffer
set hidden
set lazyredraw
set ttyfast

" History
set history=999
set undolevels=999
set autoread

" Tabs
set guitablabel=\[%N\]\ %t\ %M
nnoremap <C-t> :tabnew<CR>

" Ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|__pycache__\|dict|env\'

" Status
set laststatus=2

" Remap navigations
noremap ; l
noremap l k
noremap k j
noremap j h
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Vim backspace
set backspace=indent,eol,start

" Vundle
call vundle#begin()

" All Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'fisadev/vim-isort'
Plugin 'atom/fuzzy-finder'
Plugin 'ayu-theme/ayu-vim'
Plugin 'mileszs/ack.vim'
call vundle#end()
filetype plugin indent on

set background=dark
highlight Comment cterm=bold

" Ayu
set termguicolors
let ayucolor="dark"
colorscheme ayu

" NERDTree ignore files
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git', '.tox']
map <F3> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='t'

" NERDCommenter
let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1

" CtrlP
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

" Auto complete
let g:jedi#goto_command = "gd"
let g:jedi#auto_vim_configuration = 0
set completeopt=menuone,longest
inoremap <C-k> <Down>
inoremap <C-l> <Up>

" Ale
let g:ale_linters_explicit = 1
let g:ale_python_flake8_use_global = 1
let g:ale_linters = {
\  'python': ['flake8', 'pytest'],
\}
let g:ale_fixers = {
\  'python': ['autopep8'],
\}
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⬥'
let g:ale_lint_on_enter = 1
let g:ale_open_list = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_list_window_size = 8

" Auto Format
let g:formatter_yapf_style = 'pep8'
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Pydocstring
nmap <silent> <C-_> <Plug>(pydocstring)

" Isort
let g:vim_isort_map = '<C-i>'

" Black
command Black !black -l 79 %:p

" Fuzzy finder
set rtp+=~/.fzf

" Vim backspace
set backspace=indent,eol,start
