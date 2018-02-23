augroup Buffers
	autocmd!
	" keep cursor position when switching buffers
	autocmd BufEnter * silent! normal! g`"	
augroup END

augroup NERDTree
	autocmd!
	" go up a dir using hyphen
	autocmd FileType nerdtree nmap <buffer> - u
	" delete buffer when hidden
	autocmd FileType nerdtree setlocal bufhidden=delete
augroup END
