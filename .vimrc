" Initialize pathogen (~/.vim/autoload/pathogen.vim)
call pathogen#infect()
call pathogen#helptags()

" screen layout
set ruler
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

" input settings
set softtabstop=2
set tabstop=2

" display settings
colorscheme slate
set number
set nospell spelllang=en_us
set expandtab

" syntax highlighting
syntax on
autocmd BufNewFile,BufRead *.json set ft=javascript

" folding settings
set foldmethod=syntax   "fold based on indent
set foldnestmax=6       "deepest fold is 10 levels
set foldlevel=2         "this is just what i use
"""set nofoldenable        "dont fold by default


" plugin settings
let NERDTreeShowBookmarks=1
let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets"
let g:showfuncctagsbin="/usr/local/bin/ctags"

" backup/recovery
set backup 
set backupdir=~/Dropbox/VimBackups 
set directory=/tmp 
set undodir=/tmp//  

