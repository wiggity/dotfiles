syntax enable

call pathogen#infect()

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
set listchars=tab:>-,trail:.
set expandtab

let g:solarized_termtrans = 1
let g:Powerline_symbols = 'fancy'

let g:vhdl_indent_genportmap = 0
filetype plugin indent on
colorscheme solarized


autocmd FileType *      set tabstop=4|set shiftwidth=4|set softtabstop=4|set foldcolumn=1|highlight Folded ctermfg=darkmagenta ctermbg=black|highlight FoldColumn ctermfg=darkred ctermbg=black
autocmd FileType vhdl   set list
autocmd FileType vim    set list
autocmd FileType ruby   set list
autocmd FileType python set list

augroup vimrc
   au BufReadPre  ?* setlocal foldlevelstart=99|setlocal foldmethod=manual
   au BufWinEnter ?* silent loadview
   au BufWinLeave ?* mkview
augroup END

" Sets timeout to 200 ms
set tm=200
inoremap jk <ESC>
inoremap kj <ESC>
map <F4> : set list!<LF>
map <F5> : tabp<LF>
map <F6> : tabn<LF>
map <F9> : set foldcolumn=0<LF>
map <F10> : set foldcolumn=1<LF>
