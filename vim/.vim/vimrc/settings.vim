set nocompatible				" be iMproved, required
set backspace=indent,eol,start	
set noerrorbells visualbell t_vb=		" disable beep

" Search
set incsearch					" search as characters are entered
set hlsearch					" highlight matches

" Buffers
set hidden					" switch buffer without saving

" FZF (Fuzzy Finder)
let g:fzf_layout={ 'down': '~20%' }
let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

" Rooter
let g:rooter_silent_chdir=1

" Airline
let g:airline_theme='minimalist'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
