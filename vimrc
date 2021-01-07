set nocompatible              " required
filetype off                  " required
set number
set clipboard=unnamedplus

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'junegunn/seoul256.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'powerline/powerline-fonts'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mattn/emmet-vim'
Plugin 'tc50cal/vim-terminal'
Plugin 'tell-k/vim-autopep8'
"Plugin 'svermeulen/vim-easyclip'
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'
Plugin 'shougo/vimproc.vim'
"Plugin 'nlknguyen/copy-cut-paste.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" PEP8 configuration
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=100
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

" Other files
au BufNewFile,BufRead *.js set softtabstop=2
au BufNewFile,BufRead *.js set shiftwidth=2
au BufNewFile,BufRead *.js set tabstop=2
au BufNewFile,BufRead *.html set softtabstop=2
au BufNewFile,BufRead *.html set shiftwidth=2
au BufNewFile,BufRead *.html set tabstop=2
au BufNewFile,BufRead *.css set softtabstop=2
au BufNewFile,BufRead *.css set shiftwidth=2
au BufNewFile,BufRead *.css set tabstop=2
au BufNewFile,BufRead *.json set softtabstop=2
au BufNewFile,BufRead *.json set shiftwidth=2
au BufNewFile,BufRead *.json set tabstop=2




" Bash files
au BufNewFile,BufRead *.sh set softtabstop=2
au BufNewFile,BufRead *.sh set shiftwidth=2
au BufNewFile,BufRead *.sh set expandtab
au BufNewFile,BufRead *.sh set tabstop=2
" Typescript files
au BufNewFile,BufRead *.ts set softtabstop=2
au BufNewFile,BufRead *.ts set shiftwidth=2
au BufNewFile,BufRead *.ts set tabstop=2
"
" Set encoding
set encoding=utf-8

" Python configuration
let python_highlight_all=1
syntax on
setlocal spell spelllang=en_us
colorscheme seoul256
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_python_interpreter = '/usr/bin/python'
"autocmd VimEnter * NERDTree
set laststatus=2
" Configure emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" indent guides configuration
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Youcompleteme preview
let g:ycm_autoclose_preview_window_after_completion = 1
