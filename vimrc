set directory^=$HOME/.vim/tmp//

set nocompatible              " be iMproved, requir
filetype off                  " required

:" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'ntpeters/vim-airline-colornum'

Plugin 'dracula/vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jacoborus/tender.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


colorscheme dracula
let g:dracula_italic = 0
set noswapfile
set cursorline
set number
set relativenumber
syntax on
set gcr=a:blinkon0
set visualbell
set belloff=all
set autoread
set	expandtab tabstop=4 shiftwidth=4

set hlsearch
set incsearch
set backspace=indent,eol,start

nmap <C-n> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
let NERDTreeMapOpenInTab='\r'

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='badwolf'

set whichwrap+=<,>,[,]
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-r> :source ~/.vim/vimrc<CR>

set path+=**
