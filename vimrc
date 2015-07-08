syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" giT
Plugin 'tpope/vim-fugitive'
" EDITING
" only enable youcompleteme if the system can handle it
Plugin 'Valloric/YouCompleteMe' "optional
Plugin 'surround.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'restore_view.vim'
let g:UltiSnipsExpandTrigger="<Leader><Leader>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
Bundle 'rstacruz/sparkup'
Plugin 'The-NERD-Commenter'

" LANGUAGES
filetype plugin on
Plugin 'jQuery'
Plugin 'rails.vim'
Plugin 'php.vim'
Plugin 'mustache/vim-mustache-handlebars'

" SYNTAX CHECKER
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
nmap ]e :lnext<cr>
nmap [e :lprevious<cr>
highlight SyntasticErrorSign guifg=white guibg=red

" MOVEMENT
Plugin 'matchit.zip'

" Plugin 'php.vim-html-enhanced' -- bad inent rule
Plugin 'css3-syntax-plus'
au BufNewFile,BufRead *.md  setf markdown

" TABS / WINDOWS
Plugin 'Tabmerge'
nmap <C-W>m :Tabmerge<Space>
nmap <C-W>M <C-W>T
" easy buffer switching
nnoremap <F5> :buffers<CR>:buffer<Space>

" Browsing
Plugin 'kien/ctrlp.vim'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp=1
let g:ctrlp_working_path_mode = 'rw'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
map <F2> :NERDTreeToggle<CR>
set guioptions-=r
set guioptions-=L
" If the font doesn't support utf8 arrows inside screen try
" adding 'export LANG=en_US.utf8' to the .bashrc. If that doesn't work,
" Uncomment this line:
"let NERDTreeDirArrows = 0

" - start nerdtree if vim is started without any arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

filetype plugin indent on

" Searching
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'mileszs/ack.vim'
Plugin 'nerdtree-ack'
Plugin 'inside/vim-grep-operator'
let g:grep_operator = 'Ack'
nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
nmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
vmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
set t_ti= t_te=

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
set incsearch
set showmatch
set hlsearch
" Weird stuff happens when you just map a single <ESC>
nmap <ESC><ESC> :noh<cr>

" remap F1 key to prevent accidental presses
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" function to toggle line number display
" 0 press = no numbers
" 1 press = normal numbers
" 2 press = relative AND normal numbers
" 3 press = just relative numbers
function! NumberToggle()
  if(&number == 0 && &relativenumber == 0)
    set number
  elseif(&number == 1 && &relativenumber == 0)
    set relativenumber
  elseif(&number == 1 && &relativenumber == 1)
    set nonumber
  elseif(&number == 0 && &relativenumber == 1)
    set norelativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" add custom help file
:helptags ~/.vim/doc
nmap <Leader>? :help custom-shorcuts<cr>
