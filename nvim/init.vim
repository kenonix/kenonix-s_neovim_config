" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline-themes'
" Initialize plugin system
call plug#end()

"setting_of_vim-airline
let g:airline#extensions#tabline#enabled = 1
"Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
let g:airline#extensions#tabline#formatter = 'unique_tail'

"USER setting
set autoindent
set cindent
set nu
set ts=4 "탭 너비
set shiftwidth=4 "자동 인덴트할때 너비
set mouse=a

au BufReadPost * "마지막 편집위치 사용
\ if line("'\"") > 0 && line("'\"") <=line("$") |
\ exe "norm g'\"" |
\ endif

"구문 강조 사용
if has("syntax")
 syntax on
endif

set laststatus=2 "상태바 표시 항상 사용
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"set encoding=utf-8
colorscheme jellybeans
set guifont=D2coding:h14
"set number relatibenumber
set rnu



