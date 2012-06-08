:syntax on
:colorscheme ir_black
:set number
:set softtabstop=2
:set shiftwidth=2
:set tabstop=2
:set expandtab
:set autoindent
:set modelines=5
:set term=xterm
"needs vim 7.3
":set colorcolumn=78
":highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
highlight OverLength ctermfg=DarkRed guibg=#FFD9D9
match OverLength /\%>80v.\+/

au BufRead,BufNewFile *nginx.conf set ft=nginx
