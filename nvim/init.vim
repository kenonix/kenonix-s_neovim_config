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
Plug 'junegunn/goyo.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'puremourning/vimspector'



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
set scrolloff=999

"set encoding=utf-8
colorscheme jellybeans
set guifont=D2coding:h14
"set number relatibenumber
set rnu


" Ű ����
" <F1> ����
"map <F1> v]}zf
map <F1> :tabnew<cr>
" <F2> â�̵�
map <F2> <C-w><C-w>
" <F3> NERDTree
map <F3> :NERDTreeToggle<cr>
" <F4> Tlist
"map <F4> :Tlist<cr>
map <F4> :TagbarToggle<cr>

map <F6> :Goyo <CR>
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set number
  set rnu
 endfunction
 function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=999
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

map <F7> :term<cr>
" <F7> shell
map <F9> :%!xxd<cr>
" <F8> Dox
map <F10> :%!xxd -r<cr>
" bnext, bprev
map <F11> :bp<cr>
map <F12> :bn<cr>
" tabn
map <S-Tab> gt<cr>
" bnext
map <S-F1> :bnext<cr>



