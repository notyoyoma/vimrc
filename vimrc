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
Plugin 'Markdown'
Plugin 'surround.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" languages
filetype plugin on
Plugin 'jQuery'
Plugin 'rails.vim'
Plugin 'php.vim'
" Plugin 'phpErrorMarker'
Plugin 'php.vim-html-enhanced'
" Plugin 'css-color-preview'
Plugin 'css3-syntax-plus'
" Tabs / windows
Plugin 'Tabmerge'

filetype plugin indent on

set tabstop=2
set shiftwidth=2
set smartindent
set backspace=indent,eol,start
set hlsearch
"inoremap # X<BS>#
