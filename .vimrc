set number
set hls
syntax on

"Vundle{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"my plugin
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"}

"taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Use_Right_Window=1
map <silent> <F9> :TlistToggle<CR>
"

"nerdtree
map <silent> <F8> :NERDTreeToggle<CR>
"

"vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
map <silent> <F3> :bp<CR>
map <silent> <F4> :bn<CR>
map <silent> <F5> :bd<CR>
set t_Co=256
"

set shiftwidth=4
set tabstop=4
set expandtab
set list
set listchars=tab:>-,trail:-
set colorcolumn=80
