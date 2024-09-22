colorscheme elflord

set nowrap

" set list
set lcs+=space:·

" set number

set viminfo='100,<1000,s100,h

set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
let timer = timer_start(4000, 'UpdateStatusBar',{'repeat':-1})
function! UpdateStatusBar(timer)
  execute 'let &ro = &ro'
endfunction

" ----------------------------------------------------

call plug#begin('~/.vim/plugged')

" Add CtrlP plugin
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-obsession'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" ----------------------------------------------------

" Download CtrlP for Linux and Windows
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.v
" iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | ni $HOME\vimfiles\autoload\plug.vim -Force

" Set ag as default search engine in CtrlP
" Use ag (The Silver Searcher) as the search engine (if installed)
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'