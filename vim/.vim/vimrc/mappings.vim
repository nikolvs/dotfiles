let mapleader = ","

" Search
nnoremap <leader><space> :let @/ = ""<cr>

" Splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" Vimrc 
nnoremap <leader>ev :e ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>

" FZF (Fuzzy File Finder)
nnoremap <C-p> :Files<cr>
