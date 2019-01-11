syntax enable           " enable syntax processing

" Colors
set t_Co=256            " enable 256 color mode
color zenburn           " read colors from colors file ~/.vim/colors/

" Mapleader
let mapleader=","       " leader is comma

" spaces and tabs
set softtabstop=4       " number of spaces in tab when editing

set expandtab           " tabs are spaces

set shiftwidth=4        " set indent to 4 spaces

" UI config
set number              " show line numbers

set showcmd             " show command in bottom bar

set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set showmatch           " highlight matching [{()}]

" Search
set incsearch           " search as characters are entered

set hlsearch            " highlight matches

" turn off search highlight with a space
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding

set foldlevel=99        " make default position unfolded

" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level

" Movement
" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" Customer bindings
" jk is escape
inoremap jk <esc>

" autocompete settings
" turn on omni complete
set completeopt=longest,menuone " opens menu also if there's only one match, fills to longest common match
" turn on omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" hive highlighted from syntax/hive.vim file
au BufNewFile,BufRead *.hql set filetype=hive expandtab
