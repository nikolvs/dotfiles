let mapleader = ","

" Clear search
nnoremap <leader><space> :let @/ = ""<cr>

" Buffers
nnoremap <C-]> :bnext<cr>
nnoremap <C-[> :bprev<cr>
nnoremap <leader>q :bdel<cr>

" Vimrc 
nnoremap <leader>ev :edit ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" FZF (Fuzzy Finder)
nnoremap <C-p> :Files<cr>
nnoremap <leader>. :Filetypes<cr>
