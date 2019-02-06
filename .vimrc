set backspace=2
set number
color dracula
syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()


Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-rails'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
