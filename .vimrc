
call pathogen#infect()
call pathogen#helptags()

set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
set number
set nospell spelllang=en_us
set softtabstop=2
colorscheme slate

autocmd BufNewFile,BufRead *.json set ft=javascript
syntax on

let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets"

let NERDTreeShowBookmarks=1

