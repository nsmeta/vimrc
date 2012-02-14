set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set nobackup
set ls=2
set ruler
set number
set ignorecase
set ttyfast
colorscheme desert
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
syntax on

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" *** Bundles ***
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'

"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
