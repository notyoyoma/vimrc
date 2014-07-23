syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
"Bundle 'Valloric/YouCompleteMe'


" git
Plugin 'fugitive.vim'
" editing
Plugin 'surround.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'restore_view.vim'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
Bundle 'rstacruz/sparkup'

" languages
filetype plugin on
Plugin 'jQuery'
Plugin 'rails.vim'
Plugin 'php.vim'

Plugin 'php.vim-html-enhanced'
Plugin 'css3-syntax-plus'
" Tabs / windows
Plugin 'Tabmerge'
" unfortunatley ack.vim requires installing ack in the local environment.
" If you want to do that, follow these instructions:
"   http://beyondgrep.com/install/
" Then uncomment these lines:
" Bundle 'mileszs/ack.vim'
" Plugin 'nerdtree-ack'

" Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
set guioptions-=r
set guioptions-=L
" - start nerdtree if vim is started without any arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

filetype plugin indent on

" Other settings
set encoding=utf-8
set wildmenu
set wildmode=list:longest
set cursorline
" set ttyfast
set laststatus=2
set backspace=indent,eol,start

" Indents
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" Search settings
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
" Weird stuff happens when you just map a single <ESC>
nmap <ESC><ESC> :noh<cr>

" remap F1 key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
