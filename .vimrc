set nocompatible

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" change the mapleader from \ to ,

let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set nowrap        " don't wrap lines
set tabstop=3     " a tab is 3 spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
"set noautoindent    " always set autoindenting off
"set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=3  " number of spaces to use for autoindenting
set expandtab     " convert tabs to space
"set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
"set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type



set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep


set nobackup
set noswapfile


filetype plugin indent on

set t_Co=256
if &t_Co >= 256 || has("gui_running")
"   colorscheme mustang
   let g:solarized_termcolors=256
   colorscheme solarized
   set background=light
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif


set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
set listchars=tab:▸\ ,eol:¬

autocmd filetype html,xml set listchars-=tab:>.

" restore cursor position
if has("autocmd")
       autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif 
endif

set pastetoggle=<F2>

nnoremap ; :

vmap Q gq
nmap Q gqap

"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap <F5> :GundoToggle<CR>
nnoremap <F4> :NERDTreeToggle<CR>


" Clear current search highlight
"nnoremap <esc> :noh<return>
cmap w!! w !sudo tee % >/dev/null
