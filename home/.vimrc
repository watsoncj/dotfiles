scriptencoding utf-8
let mapleader = ","
nmap <silent> <leader>n :NERDTree<cr>
set nocompatible               " be iMproved
"filetype on                    " workaround to return zero exit status
"filetype off                   " required!

syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tComment'
Bundle 'git://git.wincent.com/command-t.git'
" brew install the_silver_searcher
Bundle 'rking/ag.vim'

filetype plugin indent on     " required!
set nu
set expandtab
set tabstop=4
set shiftwidth=2
set backspace=indent,eol,start
set list lcs=trail:·,tab:»·
hi NonText ctermfg=1 guifg=blue
hi SpecialKey ctermfg=2 guifg=grey
set pastetoggle=<F2>
nnoremap ; :
vmap Q gq
nmap Q gqap
cmap w!! w !sudo tee % >/dev/null
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set novisualbell
set noerrorbells
set autoindent
set incsearch
set number
set showmatch
set ignorecase
set smartcase

" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>
