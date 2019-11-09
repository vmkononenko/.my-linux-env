execute pathogen#infect()
syntax on
filetype plugin indent on

" Statusline
set nocompatible ruler laststatus=2 showcmd showmode number

set background=dark

" Show line numbers
set number

" Mark tabs and trailing spaces
set list listchars=nbsp:·,tab:→\ ,trail:·,extends:>,precedes:<

" Remove useless splash screen
set shortmess+=I

" Set normal mode for mouse: allow to put cursor with mouse click
set mouse=a

" Indentation
set smartindent tabstop=4 shiftwidth=4 expandtab

" Search
set incsearch ignorecase smartcase hlsearch

" Shell-like autocompletion
set wildmode=list:longest

" Disable highlighting search result on Enter key
nnoremap <silent> <cr> :nohlsearch<cr>

" Scroll the window so we can always see 10 lines around the cursor
set scrolloff=10

" Enable recursive find
set path=**

" Show a vertical line on a 80th character
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=DarkGrey

" Start taglist with F3 key
map <F3> :TlistToggle<CR>

" cscope find function definition
nmap <c-f> :cs find g <c-r>=expand("<cword>")<cr><cr>

" Start NERDTree with F2 key
map <F2> :NERDTreeToggle<CR>

" NERDTree window width
let g:NERDTreeWinSize = 40

