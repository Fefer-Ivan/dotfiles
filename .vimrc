set autoindent
set background=dark
set backspace=indent,eol,start
set cino=N-s,g0,+2s,l-s,i2s
set colorcolumn=101
set expandtab
set hlsearch
set number
set shiftwidth=2
set softtabstop=2
set tabpagemax=300
set tabstop=2
set wildmenu
set wildmode=longest,list

autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clangd-completer --go-completer --ts-completer' }
Plug 'tpope/vim-abolish'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='C-t'

let g:ycm_confirm_extra_conf = 0
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
