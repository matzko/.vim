call pathogen#infect()

set nu
set ai
set ignorecase
set hlsearch
set noexpandtab
set tabstop=4
set shiftwidth=4
" use spaces for tabs
" set tabstop=4
" set shiftwidth=4
" set expandtab

" omnicomplete
filetype plugin on
set ofu=syntaxcomplete#Complete
" choose omnicomplete option with jk keys instead of <C-n> and <C-p>
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

let g:checksyntax_auto=0
let g:syntastic_phpcs_conf = " --tab-width=4 --standard=PEARish"

" map double "m" to refresh syntax highlighting
nmap mm :syn sync fromstart<CR>


syntax on
set foldmethod=indent
set diffopt+=iwhite
set t_Co=256
colorscheme zenburn
colors zenburn

" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'
" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1
" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1
" width of window
let Tlist_WinWidth = 40
" close tlist when a selection is made
let Tlist_Close_On_Select = 1
