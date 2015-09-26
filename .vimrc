" load pathogen package manager, in case not installad, use command below:
" mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
runtime! autoload/pathogen.vim
if exists("*pathogen#infect")
    call pathogen#infect()
endif

" call Init() once we are in user control space
autocmd VimEnter * :call Init()


colorscheme darkblue
set background=dark

syntax on
filetype plugin on
filetype indent on

set number

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoread
set ruler
set cmdheight=2

set ignorecase
set smartcase
set hlsearch
set incsearch

set showmatch
set mat=2

set ffs=unix,dos,mac
set encoding=utf8

set nobackup
set nowb
set noswapfile

set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set lbr
set tw=500

set ai
set si
set wrap

fun! SetAlias(from, to)
    exec 'cnoreabbrev <expr> '.a:from
                \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
                \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun

call SetAlias("qq","qa")
call SetAlias("wqq","wqa")



function Init()
    if exists(":NERDTree")
        :NERDTree
        :wincmd p
    endif
endfunction