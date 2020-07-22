syntax on
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'


" /=============================\
"              Git
" \=============================/

  " Awesome Git Integration
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'

  " Git settings
    nmap <Leader>G :GitGutterToggle<CR>
    nmap <Leader>hr <Plug>GitGutterUndoHunk
    nmap <Leader>ha <Plug>GitGutterStageHunk



" /=============================\
"           Editing
" \=============================/

  filetype off
  filetype plugin on

  " Text Completion
  " Plugin 'Valloric/YouCompleteMe'
  " Plugin 'neoclide/coc.nvim'

  " Start page
  Plugin 'mhinz/vim-startify'

  " Snippets for YCM
  Plugin 'SirVer/ultisnips'

  " More Snippets
  Plugin 'honza/vim-snippets'

  " Change surrounding structures
  Plugin 'surround.vim'

  " Restore previous location when re-opening files
  Plugin 'restore_view.vim'

  " Easy HTML typing
  Bundle 'rstacruz/sparkup'

  " Syntax Checker
  " Plugin 'Syntastic'

  " Editing Settings
    let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
    let g:ycm_use_ultisnips_completer = 1             " Default 1, just ensure
    let g:ycm_seed_identifiers_with_syntax = 1         " Completion for programming language's keyword
    let g:ycm_complete_in_comments = 1                " Completion in comments
    let g:ycm_complete_in_strings = 1                 " Completion in string
    let g:ycm_python_binary_path = '/Users/mnaselli/.pyenv/shims/python3'
    let g:UltiSnipsExpandTrigger="<Leader><Leader>"
    let g:UltiSnipsJumpForwardTrigger="<C-j>"
    let g:UltiSnipsJumpBackwardTrigger="<C-k>"
    let b:surround_{char2nr("v")} = "{{ \r }}"
    let b:surround_{char2nr("{")} = "{{ \r }}"
    let b:surround_{char2nr("%")} = "{% \r %}"
    let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
    let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
    let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
    let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
    let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_json_checkers = ['jsonlint']

" /=============================\
"          Languages
" \=============================/

  " JSON
  Plugin 'JSON.vim'

  " Vue
  Plugin 'posva/vim-vue'

  " PHP
  Plugin 'StanAngeloff/php.vim'
  Plugin 'rayburgemeestre/phpfolding.vim'
  Plugin '2072/PHP-Indenting-for-VIm'

  " Python
  " Plugin 'Python-Syntax'
  " Plugin 'davidhalter/jedi-vim'
  " Plugin 'virtualenv.vim'

" /=============================\
"          Frameworks
" \=============================/

  " django
  Plugin 'django.vim'
  Plugin 'jmcomets/vim-pony'

  
" /=============================\
"         Movement
" \=============================/

  " Matchit makes html tag matching work with %
  Plugin 'matchit.zip'

  " EasyMotion makes movements easier
  Plugin 'EasyMotion'


" /=============================\
"         Tabs / Windows
" \=============================/
 
  " Tabmerge merges other tabs into the current window
  Plugin 'Tabmerge'

  " Tabs / Window settings
    nmap <C-W>m :Tabmerge<Space>
    nmap <C-W>M <C-W>T
    " easy buffer switching
    nnoremap <F5> :buffers<CR>:buffer<Space>
  
  Plugin 'gu-fan/simpleterm.vim'

  " Terminal keys
    nmap <C-T> :Sshow<CR>


" /=============================\
"          File Browsing
" \=============================/

  " NERDTree is a file browser
  Plugin 'scrooloose/nerdtree'

  " adds Git markers to NERDTree
  Plugin 'Xuyuanp/nerdtree-git-plugin'

  " Browsing Settings
    map <F2> :NERDTreeToggle<CR>
    let g:NERDTreeChDirMode=2
    set guioptions-=r
    set guioptions-=L

    " - start nerdtree if vim is started without any arguments
    "autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  filetype off
  filetype plugin indent on

" /=============================\
"            Searching
" \=============================/

  " visually select, then hit * to search
  Plugin 'nelstrom/vim-visual-star-search'

  " add :Ack commands
  Plugin 'mileszs/ack.vim'

  " add Ack search to NERDTree
  Plugin 'nerdtree-ack'
  
  " add movement and visual selection for :Ack
  Plugin 'inside/vim-grep-operator'

  " add <C-P> for fuzzy file-name search
  Plugin 'kien/ctrlp.vim'

  " Search Settings
    let g:ack_default_options = " -s -H --nopager --nogroup --column"
    let g:grep_operator = 'Ack'
    nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
    vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
    nmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
    vmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
    let g:ctrlp_by_filename = 1
    let g:ctrlp_regexp=1
    let g:ctrlp_extensions = ['line', 'dir']
    let g:ctrlp_working_path_mode = 'rw'
    set t_ti= t_te=
    set ignorecase
    set smartcase
    set incsearch
    set showmatch
    set hlsearch
    " Map Double <ESC> to clear search highlights
    " Weird stuff happens when you just map a single <ESC>
    nmap <ESC><ESC> :noh<cr>
    
" /=============================\
"          General Editing
" \=============================/

  " Repeatable plugin actions
  Plugin 'tpope/vim-repeat'

  " Fancy Statusline
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  " Indent Detect
  "Plugin 'DetectIndent'

  " Editing Settings
    set laststatus=2
    let g:airline#extensions#hunks#enabled=0
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#show_tabs = 1
    let g:airline_powerline_fonts = 1
    let g:bufferline_echo = 0

  " Color Settings
    let g:airline_theme='badwolf'
    colorscheme default



    " TODO figure out diff colors
    highlight DiffAdd    cterm=NONE ctermfg=Black ctermbg=LightGreen
    highlight DiffDelete cterm=NONE ctermfg=Black ctermbg=LightRed
    highlight DiffChange cterm=NONE ctermfg=Black ctermbg=Yellow
    highlight DiffText   cterm=NONE ctermfg=Black ctermbg=Yellow

  " Indent Settings
    "autocmd BufReadPost * :DetectIndent
    "let g:detectindent_preferred_expandtab = 1

" /=============================\
"           Web Browsing
" \=============================/

  " Plugin 'joshhartigan/vim-reddit'
  " Plugin 'ryanss/vim-hackernews'

" /=============================\
"          Other Settings
" \=============================/

    " ||c coppies the entire file to the system cipboard
    " map <Leader><Leader>c gg"+yG``
    " ||/ search for non ascii codes
    map <Leader><Leader>/ /[^\x00-\x7F]<cr>

    " F3 toggles paste
    set pastetoggle=<F3>

    set encoding=utf-8
    set wildmenu
    set wildmode=list:longest
    set cursorline
    set ttyfast
    set backspace=indent,eol,start

    " Indents

    Plugin 'DetectIndent'
    set expandtab
    set smartindent
    set tabstop=2
    set shiftwidth=2
    set softtabstop=2
    set expandtab
    set smartindent
    let g:detectindent_preferred_expandtab=2
    let g:detectindent_preferred_indent=2

    " remap F1 key to prevent accidental presses
    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>

    " add custom help file
    :helptags ~/.vim/doc
    nmap <Leader>? :help custom-shorcuts<cr>


" /=============================\
"        Custom Functions
" \=============================/

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

    " :read !ruby -e 'puts Random.rand(10)'
    "
    " WSL yank support
    let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
    if executable(s:clip)
      augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
      augroup END
    endif

" /=============================\
"           End of file
" \=============================/
