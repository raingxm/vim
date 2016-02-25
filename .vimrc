set nocompatible              "We want the latest Vim settings/options.

so ~/.vim/plugins.vim


set number
syntax enable
syntax on

set smartindent
set autoindent

set softtabstop=4
set shiftwidth=4

set incsearch

set showmatch

set autowrite
set laststatus=2

set backspace=indent,eol,start            "Make backspace behave like every other editor.

let mapleader = ","                       "The default leader is \, but a comma is much better.

let NERDTreeHijackNetrw = 0      " Not use nerdTree



"------------------Visuals-----------------"
colorscheme atom-dark
set t_CO=256				    "Use 256 colors. This is useful for Terminal Vim. 
set guifont=Monaco:h16
set linespace=15                    "Macvim-specific line-height.

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R





"------------------Search-----------------"
set hlsearch




"------------------Split Mangement-----------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"------------------Mappings-----------------"

"Make it easy to edit Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr> 
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easy to toggle
nmap <D-1> :NERDTreeToggle<cr>

"------------------Auto-Commands-----------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END    
