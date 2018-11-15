set background=dark
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set number
set cino=N-s,g0,+2s,l-s,i2s
set wildmode=longest,list
set wildmenu
set hlsearch
set colorcolumn=101

autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e

call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/a.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --clang-completer --go-completer' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'tpope/vim-abolish'
Plug 'fatih/vim-go'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='C-t'

let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
