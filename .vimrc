set noswapfile
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

" Enable C++11
let g:syntastic_cpp_executable = '~/my_gcc/bin/my-g++'
let g:syntastic_cpp_compiler_options = ' -std=c++0x'

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
Bundle 'mattn/gist-vim'
Bundle 'wavded/vim-stylus'

"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

"SCons
autocmd BufReadPre,BufNewFile SConstruct set filetype=python
autocmd BufReadPre,BufNewFile SConscript set filetype=python

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

