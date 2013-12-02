scriptencoding utf-8
let mapleader = ","
nmap <silent> <leader>n :NERDTree<cr>
set nocompatible               " be iMproved
"filetype on                    " workaround to return zero exit status
"filetype off                   " required!

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

Bundle 'inkpot'
colorscheme inkpot
set background=dark
hi String gui=NONE guifg=#ffcd8b guibg=NONE ctermbg=NONE


Bundle 'Indent-Guides'
let g:indent_guides_auto_colors = 0
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
hi IndentGuidesEven  ctermbg=235
"hi IndentGuidesOdd ctermbg=61
"let g:indent_guides_start_level=2
"hi IndentGuidesOdd  guibg=red   ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4
nnoremap <leader>i :IndentGuidesToggle<CR>

" ctrlp
Bundle 'ctrlp.vim'
nnoremap <leader>f :CtrlP<CR>

" ag
" brew install the_silver_searcher
Bundle 'rking/ag.vim'
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>

" syntastic
Bundle 'Syntastic'
let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=1

" diffchanges
Bundle 'diffchanges'
nnoremap <leader>df :DiffChangesDiffToggle<CR>

Bundle 'fugitive.vim'

" coffeescript
Bundle 'kchmck/vim-coffee-script'

" ZoomWin
Bundle 'regedarek/ZoomWin'

syntax enable
"filetype plugin indent on     " required!
"filetype on
set nu
set expandtab
set tabstop=2
"set tabstop=4
set shiftwidth=2
set backspace=indent,eol,start
set list lcs=trail:·,tab:»·
hi NonText ctermfg=1 guifg=blue
hi SpecialKey ctermfg=2 guifg=grey
set pastetoggle=<F2>
nnoremap ; :
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
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
set mouse=a
" make yank work with system clipboard
set clipboard=unnamed
nnoremap x  "_x
nnoremap X  "_X
nnoremap <del>  "_x

" edit this file
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" learn vimscript the hard way
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
