call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

autocmd BufNewFile,BufRead *.json set ft=javascript
