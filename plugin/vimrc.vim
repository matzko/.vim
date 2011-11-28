call pathogen#infect()

set nu
set ai
set ignorecase
set hlsearch
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
