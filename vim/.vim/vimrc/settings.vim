set nocompatible				                " be iMproved, required
set backspace=indent,eol,start	
set noerrorbells visualbell t_vb=		        " disable beep

" Search
set incsearch					                " search as characters are entered
set hlsearch					                " highlight matches

" Buffers
set hidden					                    " switch buffer without saving

" Tabs and spaces
set expandtab					                " translate tabs to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Backup/Swap
silent !mkdir -p ~/.vim/tmp

set backup
set writebackup
set backupdir=~/.vim/tmp,~/tmp,/tmp
set directory=~/.vim/tmp,~/tmp,/tmp

" NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1

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

" Prettier
let g:prettier#quickfix_enabled=0

" Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'

" Go
let g:go_fmt_command='goimports'
