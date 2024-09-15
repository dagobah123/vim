colorscheme lunaperche

set nowrap

" set list
" set lcs+=space:·

set number

set viminfo='100,<1000,s100,h

" ----------------------------------------------------

call plug#begin('~/.vim/plugged')

" Add CtrlP plugin
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-obsession'

call plug#end()

" ----------------------------------------------------

" Download CtrlP for Linux and Windows
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.v
" iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | ni $HOME\vimfiles\autoload\plug.vim -Force

" Set ag as default search engine in CtrlP
" Use ag (The Silver Searcher) as the search engine (if installed)
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'