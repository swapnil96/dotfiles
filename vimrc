set number
set clipboard=unnamedplus
set title
set ts=4 sw=4
"filetype plugin indent on
set softtabstop=4
set autoindent
set expandtab
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set incsearch
set ruler         
set showmatch
set smarttab
set showcmd      
set incsearch   
set laststatus=2
set autowrite
set modelines=0
set nomodeline
set splitbelow
set splitright
set hlsearch
set paste

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap gj <C-W><C-J>
nnoremap gk <C-W><C-K>
nnoremap gl <C-W><C-L>
nnoremap gh <C-W><C-H>
nmap ' :TagbarToggle<CR>
nnoremap <silent> <A-RIGHT> :vertical resize +3<CR>
nnoremap <silent> <A-LEFT> :vertical resize -3<CR>
nnoremap <silent> <A-UP> :res +3<CR>
nnoremap <silent> <A-DOWN> :res -3<CR>
nnoremap <C-W>M <C-W>\| <C-W>_<CR>


if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
    syntax on
endif

let g:airline_theme='behelit'
let g:tagbar_autofocus=1
let g:tagbar_width = 50
"let g:tagbar_zoomwidth=0
let g:tagbar_show_linenumbers=1
let g:tagbar_autopreview=0
let g:tagbar_autoclose=0

filetype plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
           \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'

call plug#end()

