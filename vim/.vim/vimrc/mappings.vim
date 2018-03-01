let mapleader = ","

" Movements
nnoremap j gj
nnoremap k gk

" Clear search
nnoremap <silent> <leader><space> :let @/ = ""<cr>

" Open file explorer in current working dir
nnoremap <silent> - :edit .<cr>

" Buffers
" new empty buffer
nnoremap <silent> <leader>ee :enew<cr>
" open last closed buffer
nnoremap <silent> <leader>ec :edit #<cr>
" reload buffer
nnoremap <silent> <leader>r :checktime<cr>

" Vimrc 
nnoremap <leader>ev :edit ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Copy/paste
vnoremap y "+y
nnoremap <leader>p "+P
inoremap <leader>p <C-o>"+P

" Buffers
nnoremap <silent> <C-u> :bprev<cr>
nnoremap <silent> <C-i> :bnext<cr>
nnoremap <silent> <leader>q :bdel<cr>
nnoremap <silent> <leader>Q :bdel!<cr>

" NERDTree
nnoremap <silent> <C-n> :NERDTreeToggle<cr>

" FZF (Fuzzy Finder)
nnoremap <silent> <C-p> :Files<cr>
nnoremap <silent> <leader>. :Filetypes<cr>

" Commentary
imap <C-_> <C-o><Plug>CommentaryLine
nmap <C-_> <Plug>CommentaryLine
vmap <C-_> <Plug>Commentary

" Prettier
nmap <leader>f <Plug>(Prettier)
