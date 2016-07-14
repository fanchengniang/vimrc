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
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
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

"set omnicppcomplete
set nocp
filetype plugin on
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set completeopt=menu,longest

"set cscope
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set csverb
endif

"0 or s: Find this C symbol
"1 or g: Find this definition
"2 or d: Find functions called by this function
"3 or c: Find functions calling this function
"4 or t: Find this text string
"6 or e: Find this egrep pattern
"7 or f: Find this file
"8 or i: Find files #including this file
nmap <F6>s :vert botright scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F6>g :vert botright scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <F6>c :vert botright scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <F6>t :vert botright scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <F6>e :vert botright scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <F6>f :vert botright scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <F6>i :vert botright scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <F6>d :vert botright scs find d <C-R>=expand("<cword>")<CR><CR>
map <C-F11> :!cscope -Rbq<CR>

"set syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
