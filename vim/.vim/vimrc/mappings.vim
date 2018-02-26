let mapleader = ","

" Clear search
nnoremap <silent> <leader><space> :let @/ = ""<cr>

" File explorer
nnoremap - :edit .<cr>

" Buffers
nnoremap <C-u> :bprev<cr>
nnoremap <C-i> :bnext<cr>
nnoremap <leader>q :bdel<cr>

" Vimrc 
nnoremap <leader>ev :edit ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>

" FZF (Fuzzy Finder)
nnoremap <C-p> :Files<cr>
nnoremap <leader>. :Filetypes<cr>
