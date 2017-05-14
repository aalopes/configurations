" This is my vim config file. Please feel free to use it
" Alexandre Lopes (2015)

set nocp
color delek 
syntax on
set tabstop=4
set splitright

" Highlight text beyound the 80 column limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Expand everything to spaces except if we're dealing with makefiles
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
    set shiftwidth=4
endif
