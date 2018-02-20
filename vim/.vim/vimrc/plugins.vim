" automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Insert/delete parens, quotes, brackets in pairs
Plug 'jiangmiao/auto-pairs'
" Tree file explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Automatically cd into project root
Plug 'airblade/vim-rooter'
" Enhance netrw
Plug 'tpope/vim-vinegar'
" Seamless navigation in tmux and vim
Plug 'christoomey/vim-tmux-navigator'
" Faster paste
Plug 'enricobacis/paste.vim'
" Theme
Plug 'dikiaap/minimalist'

call plug#end()
