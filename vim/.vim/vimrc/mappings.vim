let mapleader = ","

" Clear search
nnoremap <leader><space> :let @/ = ""<cr>

" Vimrc 
nnoremap <leader>ev :e ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>

" FZF (Fuzzy Finder)
nnoremap <C-p> :Files<cr>
nnoremap <leader>. :Filetypes<cr>
