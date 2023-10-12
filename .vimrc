" What does this do again? 
packloadall | silent! helptags ALL 

filetype plugin indent on

" Some essentials
set ruler
set number
set relativenumber
set hlsearch
set lazyredraw
set wildmenu
set mouse=a
set so=7
syntax enable
set background=dark
colorscheme deus
set encoding=utf8
set ffs=unix,dos,mac
set autoindent

" Default indent settings
set expandtab 
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Indent settings for JS/TS/HTML
autocmd Filetype html setlocal sts=2 ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal sts=2 ts=2 sw=2 expandtab
autocmd Filetype javascriptreact setlocal sts=2 ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal sts=2 ts=2 sw=2 expandtab
autocmd Filetype typescriptreact setlocal sts=2 ts=2 sw=2 expandtab

" To save my left pinky

" Use vim-like keybinds for navigating panes
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" Me likely this place on keyboard
let mapleader=","

" Some convenience/misc keybinds
nnoremap <leader><CR> :noh<CR>
nnoremap <leader>r :source ~/.vimrc<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" This loads the filetype plugin. I use it for viewing man pages in a split window
runtime! ftplugin/man.vim

" Buffers related config
set hidden
nnoremap <leader>] :bn<CR>
nnoremap <leader>[ :bp<cr>


" FZF related config
set rtp+=~/.fzf
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>

" Supposed to fix redraw...something error when opening file with FZF on MacOS
set re=0

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
