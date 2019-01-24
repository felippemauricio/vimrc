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

call vundle#end()
filetype plugin indent on


syntax on
set number
set noswapfile
set encoding=UTF-8
set mouse=a
set expandtab
set tabstop=2
retab
set shiftwidth=2
set hlsearch
map <C-x> :noh<CR>


xnoremap p pgvy


try
  colorscheme codedark
  let g:airline_theme = 'codedark'
  catch 
endtry


map <C-a> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.git$', '\~$', '\.DS_Store$']
let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='<C-t>'


set wildignore+=*/node_modules/*,*/tmp/*,*.so,*.swp,*.zip 

