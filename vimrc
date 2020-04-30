" colorscheme
" mkdir -p ~/.vim/pack/github-NLKNguyen
" git clone https://github.com/NLKNguyen/papercolor-theme \
" ~/.vim/pack/github-NLKNguyen/opt
" mkdir -p ~/.vim/color
" ln -s ~/.vim/pack/github-NLKNguyen/opt/colors/PaperColor.vim ~/.vim/colors/

" https://github.com/dense-analysis/ale#installation
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
let g:ale_python_flake8_options = '--ignore=E501'
" https://github.com/tpope/vim-fugitive
" https://github.com/tpope/vim-sensible
" https://github.com/tpope/vim-surround
" https://github.com/vim-airline/vim-airline
let g:airline#extensions#whitespace#enabled = 1
" https://github.com/vim-airline/vim-airline-themes

" my *actual* changes
set number
set colorcolumn=74


" the light version is easier on my eyes
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme PaperColor

let g:PaperColor_Theme_Options = {
  \   'transparent_background': 1
  \ }
let g:PaperColor_Python_Highlight_Builtins = 1  " turns built-in highlighting on


" Put these lines at the very end of your vimrc file.
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
