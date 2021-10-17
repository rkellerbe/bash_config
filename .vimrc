syntax enable

set complete+=kspell
set completeopt=menuone,longest
set expandtab
set hlsearch
set incsearch
set mouse=a
set nobackup
set nocompatible
set noerrorbells
set number
set path+=**
set relativenumber
set scrolloff=5
set shiftwidth=4
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set undofile
set wildmenu

filetype off

set colorcolumn=80
highlight ColorColumn ctermbg=blue guibg=lightgrey
highlight Search ctermbg=blue ctermfg=lightgrey

" Set leader to space
let mapleader = " "

" Use the following line to install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 
" Install Exuberant ctags
" sudo apt-get install -y exuberant-ctags
	
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'itchyny/lightline.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'majutsushi/tagbar'
  Plug 'davidhalter/jedi-vim'
  Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
  Plug 'vim-scripts/AutoComplPop'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-N> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-t> :TagbarToggle<CR>
nnoremap <esc><esc> :silent! nohls<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


let python_highlight_all=1
