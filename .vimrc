
call pathogen#infect()
call pathogen#helptags()


let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets"

set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set number
colorscheme slate

autocmd BufNewFile,BufRead *.json set ft=javascript
filetype plugin indent on
syntax on
