set encoding=utf-8
" line numbers
set nu 

" IDE settings https://realpython.com/vim-and-python-a-match-made-in-heaven/#nix-linux
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ale_linters = {
			\   'python': ['pylint'] ,
			\ }

autocmd vimenter * NERDTree
let NERDTreeIgnore=['\.pyc$'] 

execute pathogen#infect()

