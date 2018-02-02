""" VUNDLE PLUGINS

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'wakatime/vim-wakatime'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
Plugin 'xero/blaquemagick.vim'
Plugin 'ap/vim-buftabline'
Plugin 'alvan/vim-closetag'

call vundle#end()

"""
"""""
""""""" VIM VARIABLES 
"""""
"""

syntax on
set mouse=a
set nonumber
set ruler
set showcmd
set autoindent
set cursorline
set cursorcolumn
set laststatus=2
set hlsearch
set ic
set hidden
set autoread
set formatoptions=1
set lbr
set linebreak
set wrap
colorscheme blaquemagick
set t_Co=256

"""
"""""
""""""" SHORTCUTS 
"""""
"""

nmap <leader>ne :NERDTree<CR>
nmap <leader>nc :NERDTreeClose<CR>
nmap <C-]> :NERDTreeToggle<CR>
nmap <C-e> :vsplit<CR>
nmap <C-g> :split<CR>
nmap <C-t> :tabnew <CR>
nmap <C-l> :bn <CR>
nmap <C-h> :bp <CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <C-S-k> :bdelete<CR>

"""
"""""
""""""" PLUGINS CONFIGS 
"""""
"""
"
let NERDChristmasTree = 1
let NERDTreeHighlightCursorline = 1

au BufRead,BufNewFile *.todo setfiletype todo

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.vue, *.jsx, *.js, *.ts, *.erb'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

filetype plugin indent on
autocmd Filetype php setlocal sts=4 sw=4 expandtab
autocmd Filetype perl setlocal sts=4 sw=4 expandtab
autocmd Filetype sh setlocal sts=4 sw=4 expandtab
autocmd Filetype javascript setlocal sts=2 sw=2 expandtab
autocmd Filetype sql setlocal sts=2 sw=2 expandtab
autocmd Filetype lua setlocal sts=2 sw=2 expandtab
autocmd Filetype haskell setlocal sts=2 sw=2 expandtab
autocmd Filetype scss setlocal sts=2 sw=2 expandtab
autocmd Filetype less setlocal sts=2 sw=2 expandtab
autocmd Filetype css setlocal sts=2 sw=2 expandtab
autocmd Filetype html setlocal sts=2 sw=2 expandtab
autocmd Filetype python setlocal sts=4 sw=4 expandtab
autocmd Filetype c setlocal sts=4 sw=4 expandtab}
autocmd Filetype ruby setlocal sts=2 sw=2 expandtab
autocmd Filetype vcl setlocal sts=4 sw=4 expandtab
autocmd Filetype json setlocal sts=4 sw=4 expandtab
autocmd Filetype erb setlocal sts=4 sw=4 expandtab
autocmd Filetype vue setlocal sts=2 sw=2 expandtab
au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

