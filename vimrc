" VUNDLE

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'

call vundle#end()
filetype plugin indent on

" GENERAL

set ruler
set number
set noswapfile
set cursorline
set nofoldenable

" INDENTATION

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" SEARCH

setglobal incsearch
setglobal hlsearch

" NERDTREE

let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinSize = 60

" SYNTAX HIGHLIGHTING

syntax on
colorscheme mr

au BufReadPost *.js.coffee set syntax=conf
au BufReadPost *.coffee set syntax=conf
au BufReadPost *.jst.eco set syntax=html

" MAPPINGS

nmap <leader>/ :NERDTreeToggle<CR>
nmap <Leader>s <S-^>d0i<Backspace><Space><Esc>
vmap <Leader>c y:call system("pbcopy", getreg("\""))<CR>
nmap <Leader>v :call setreg("\"",system("pbpaste"))<CR>p
vmap <Enter> <Plug>(EasyAlign)
