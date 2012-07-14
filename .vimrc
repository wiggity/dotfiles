syntax on

set incsearch
set hlsearch
set ignorecase
set mouse=a
set ttymouse=xterm2
set guioptions-=m
set guioptions-=T
set mps=(:),{:},[:],<:>
set laststatus=2
set bg=dark
set t_Co=16

set wildmenu
set wildmode=list:longest

let g:Powerline_symbols = 'fancy'

let g:vhdl_indent_genportmap = 0
filetype plugin indent on
colorscheme solarized

autocmd FileType *		set tabstop=4|set shiftwidth=4|set softtabstop=4|set noexpandtab|set foldcolumn=1|highlight Folded ctermfg=darkmagenta ctermbg=black|highlight FoldColumn ctermfg=darkred ctermbg=black
autocmd FileType vhdl	set expandtab

augroup vimrc
   au BufReadPre  ?* setlocal foldlevelstart=99|setlocal foldmethod=manual
   au BufWinEnter ?* silent loadview
   au BufWinLeave ?* mkview
   au BufReadPost ?* retab! 4
   "au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
   "au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
augroup END


" Sets timeout to 200 ms
set tm=200
inoremap jk <ESC>
inoremap kj <ESC>

map <F5> : tabp<LF>
map <F6> : tabn<LF>
map <F9> : set foldcolumn=0<LF>
map <F10> : set foldcolumn=1<LF>
