let mapleader = ","

" Clear search
nnoremap <silent> <leader><space> :let @/ = ""<cr>

" File explorer
nnoremap - :edit .<cr>

" Open new empty buffer
nnoremap <leader>ee :enew<cr>

" Copy/paste
vnoremap y "+y
nnoremap <leader>p "+P
inoremap <leader>p <C-o>"+P

" Buffers
nnoremap <C-u> :bprev<cr>
nnoremap <C-i> :bnext<cr>
nnoremap <leader>q :bdel<cr>
nnoremap <leader>fq :bdel!<cr>

" Vimrc 
nnoremap <leader>ev :edit ~/.vim/vimrc<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<cr>

" FZF (Fuzzy Finder)
nnoremap <C-p> :Files<cr>
nnoremap <leader>. :Filetypes<cr>

" Commentary
imap <C-_> <C-o><Plug>CommentaryLine
nmap <C-_> <Plug>CommentaryLine
vmap <C-_> <Plug>Commentary
