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

Plugin 'digitaltoad/vim-pug'

Plugin 'ervandew/supertab'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'morhetz/gruvbox'

Plugin 'NLKNguyen/papercolor-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"colorscheme dracula
colorscheme gruvbox
set background=dark
let g:dracula_italic = 0
set noswapfile
set cursorline
set number

"set relativenumber
syntax enable
set gcr=a:blinkon0
set visualbell
set belloff=all
set autoread

set hlsearch
set incsearch
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
"set softtabstop=4
set expandtab

set mouse=a

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
let NERDTreeShowHidden=1

"Airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='badwolf'
let g:airline_theme='base16_ashes'

set whichwrap+=<,>,[,]
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprev<CR>
nnoremap <C-r> :source ~/.vim/vimrc<CR>

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
set wildmenu
set wildignore+=**/node_modules/**
set path+=**

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

