set encoding=utf-8
" line numbers
set nu 

" IDE settings https://realpython.com/vim-and-python-a-match-made-in-heaven/#nix-linux
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" allow CTRL-C clipboard clipping
vnoremap <C-c> "*y :let @+=@*<CR>

let g:ycm_filetype_blacklist = { 
			\ 'html': 1,
			\ 'xml': 1,
			\ 'markdown': 1
			\}

" Start in NERDTree
autocmd vimenter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.pyc$'] 

execute pathogen#infect()

