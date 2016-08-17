set nocompatible              " be iMproved, required

" Plugins
silent! runtime bundles.vim

" syntax
filetype on
filetype plugin on
filetype indent on
syntax on

" spelling
setlocal spelllang=en_gb

" Unicode
set encoding=utf-8
set termencoding=utf-8

" appearance
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set ruler
set colorcolumn=80
set showmode
set showcmd
set number
set title

" Line numbers
set nu 

" swp file location
:set directory=$HOME/.vim/swapfiles/

" behaviour 
" autocmd BufEnter * cd %:p:h " cd to the current file's dir
set wildmenu
set backspace=indent,eol,start
set textwidth=79
set showbreak=>\ 
set scrolloff=8
set foldenable
set visualbell
set splitbelow
set mouse=a
set term=xterm-256color

" tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set expandtab
set smarttab

" colours
set background=dark
colorscheme solarized

" searching
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

" files
autocmd FileType html setlocal softtabstop=2 shiftwidth=2
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufNewFile,BufRead *.json set tw=0

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "😞"
let g:syntastic_style_warning_symbol = "😕"

" powerline
let Powerline_symbols = "unicode"


" supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
highlight Pmenu ctermbg=238 gui=bold

" colorcolumn while <7.3
match ErrorMsg '\%>80v.\+'

" old title
let &titleold=getcwd()

" Case insensitive search
set ic

" Tab mappings
map <C-h> gT
map <C-l> gt
map <C-t> :tabnew 

" Insert mode
imap jj <Esc>

" Map cursor keys to moving per on-screen-line, *not* line of text line.
nmap j gj
nmap k gk

" tabs
set tabpagemax=200
