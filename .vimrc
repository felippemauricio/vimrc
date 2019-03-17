set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
Plugin 'kien/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'
Plugin 'valloric/MatchTagAlways'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'skammer/vim-swaplines'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on


" ===================================================================================== 
" Confs
" =====================================================================================

" Allow text color
syntax on

" Show line numbers
set number

" Set default enconding to UTF-8
set encoding=UTF-8

" Allow to use mouse
set mouse=a

" Disable swap files (.swp)
set noswapfile

" Add hypertext when search
set hlsearch

" Remove hypertext after search using Control + x
map <C-x> :noh<CR>

" Copy and paste infinity times
xnoremap p pgvy


" ===================================================================================== 
" NerdTree configuration
" =====================================================================================

" Open and Close with Control + a
map <C-a> :NERDTreeToggle<CR>

" Ignore folders
let NERDTreeIgnore=['\.git$', '\.DS_Store$']

" Open file on new tab with Control + t
let NERDTreeMapOpenInTab='<C-t>'

" Quit when open file
let NERDTreeQuitOnOpen = 1

" Delete the buffer when delete file
let NERDTreeAutoDeleteBuffer = 1

" List dot files
let NERDTreeShowHidden=1

" Open with current directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close when is only nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ===================================================================================== 
" Add Theme
" =====================================================================================

try
  colorscheme codedark
  let g:airline_theme = 'codedark'
  catch 
endtry

