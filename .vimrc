call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
autocmd BufNewFile,BufRead *.json set ft=javascript

colorscheme slate
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

