syntax on    
colorscheme peachpuff
set number
set hlsearch
set incsearch
set smartindent
set showmatch
set ignorecase"
set cursorline
set foldmethod=indent
set foldlevel=99
autocmd vimenter * NERDTree
" autocmd vimenter * vertical res 24
autocmd vimenter * wincmd w
nnoremap <space> za
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

autocmd VimLeave * mksession! ~/.vim_session.vim

set tabstop=4
set shiftwidth=4
set expandtab

let NERDTreeWinSize = 24
" Easymotion 更改快捷键
" map f <Plug>(easymotion-prefix)
map f <Plug>(easymotion-s2)
map fs <Plug>(easymotion-f)
map fl <Plug>(easymotion-lineforward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fh <Plug>(easymotion-linebackward)
""imap <c-j> <down>
""imap <c-k> <up>
""imap <c-h> <left>
""imap <c-l> <right>
" 忽略大小写
let g:EasyMotion_smartcase = 1

set nocompatible              " be iMproved, required
filetype off                  " required
set viminfo='1000,f1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/garbas/vim-snipmate.git'
Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/vim-scripts/AutoClose'
" ...

filetype plugin indent on     " required
"Bundle 'Valloric/YouCompleteMe'
