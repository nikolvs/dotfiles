" automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" File explorer
Plug 'scrooloose/nerdtree'
" Insert/delete parens, quotes, brackets in pairs
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
" Insert comments in code
Plug 'tpope/vim-commentary'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Automatically cd into project root
Plug 'airblade/vim-rooter'
" Seamless navigation in tmux and vim
Plug 'christoomey/vim-tmux-navigator'
" Theme
Plug 'dikiaap/minimalist'
" Status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Config editor coding style
Plug 'editorconfig/editorconfig-vim'
" Code formatter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Syntax checking
Plug 'vim-syntastic/syntastic'

call plug#end()
