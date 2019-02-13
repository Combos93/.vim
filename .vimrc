filetype indent on
syntax on

set nocompatible
set backspace=2
set number
set encoding=utf8
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set showmatch
set visualbell
set autoread
set wildmenu
set wildignore+=*/tmp/*,*/cache/*,*/log/* 
set completeopt=menuone

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

filetype on
color dracula

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ruby_checkers = ['rubocop']

let g:ctrlp_map = '<c-f>'


call plug#begin()

Plug 'vim-ruby/vim-ruby'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-rails'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'alexlafroscia/postcss-syntax.vim'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()

filetype plugin on
au FileType ruby,eruby setl ofu=rubycomplete
au FileType html,xhtml setl ofu=htmlcomplete
au FileType css setl ofu=csscomplete
