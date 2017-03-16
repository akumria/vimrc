execute pathogen#infect()
syntax on
filetype plugin indent on
set encoding=utf-8

" get flagship going
set laststatus=2
set showtabline=2
set guioptions-=e

" all .md files are Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" flag trailing whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_yaml_yamllint_args = "-d \"{extends: default, rules: {line-length: disable}}\""

" setup color scheme
syntax enable
colorscheme PaperColor
" the light version is easier on my eyes
if has('gui_running')
    set background=light
else
    set background=dark
endif

set number

let g:PaperColor_Theme_Options = {
  \   'transparent_background': 1
  \ }
let g:PaperColor_Python_Highlight_Builtins = 1  " turns built-in highlighting on
