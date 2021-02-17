" :source % = to take effect
" :PlugInstall :PlugUpgrade :PlugUpdate :PlugClean
call plug#begin('~/.vim/plugged')

Plug 'tomasiser/vim-code-dark'

Plug 'scrooloose/nerdtree'                           " file system explorer
Plug 'scrooloose/nerdcommenter'                      " multiple line comment
" Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'

Plug 'valloric/matchtagalways'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-markdown'
Plug 'yggdroot/indentline'

call plug#end()

" Basic Settings
syntax on                                           " Enable syntax highlighting
set encoding=utf-8                                  " Use UTF-8
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set autoindent                                      " Copy indent to the new line
" set number                                          " Show line number
set hlsearch                                        " Enable search highlighting
set ruler                                           " Show cursor position
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir                          " Set directory for undo files
set undofile                                        " Automatically save undo history
set incsearch                                       " Highlight search pattern as it is being typed
set smartcase                                       " Override `ignorecase` option if the search pattern contains uppercase characters
set ignorecase
" set termguicolors
set splitbelow splitright

highlight Comment ctermfg=green

colorscheme codedark

" Nerd
" map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap -- <plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1                           " Add spaces after comment delimiters by default

" Scss
autocmd FileType scss set iskeyword+=-

" better whitespace
:autocmd FileType markdown EnableWhitespace

" jsx pretty
let g:vim_jsx_pretty_colorful_config = 1 " default 0

filetype plugin indent on

noremap <silent> <C-h> :vertical resize -3<CR>
noremap <silent> <C-j> :resize -3<CR>
noremap <silent> <C-k> :resize +3<CR>
noremap <silent> <C-l> :vertical resize +3<CR>

