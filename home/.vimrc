set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'icalendar.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree.git'
Bundle 'bling/vim-airline'
"Bundle 'flazz/vim-colorschemes'
Bundle 'Indent-Guides'
Bundle 'ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'Syntastic'
Bundle 'vim-coffee-script'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'MarcWeber/vim-addon-local-vimrc'
Bundle 'jellybeans.vim'

colorscheme jellybeans

let mapleader = ","
syntax enable
filetype plugin indent on     " required!
set nocompatible
set background=dark
"let g:jellybeans_use_lowcolor_black = 0
set t_Co=256
set nu
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set list lcs=trail:·,tab:»·
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
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>i :IndentGuidesToggle<CR>
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>
nmap <silent> <leader>n :NERDTreeToggle<cr>

autocmd! BufRead,BufNewFile *.ics setfiletype icalendar

let g:indent_guides_enable_on_vim_startup = 1
let g:syntastic_enable_signs=1
      let g:syntastic_auto_loc_list=1

"let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'jellybeans'
