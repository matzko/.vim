call pathogen#infect()

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/

set nu
set ai
set ignorecase
set hlsearch
" set noexpandtab
" set the width that tabs appear to be
set tabstop=2
set shiftwidth=2
set listchars=tab:·\ ,eol:˺
set list
" use spaces for tabs
" set tabstop=4
" set shiftwidth=4
set expandtab

" omnicomplete
filetype plugin on
set ofu=syntaxcomplete#Complete
" choose omnicomplete option with jk keys instead of <C-n> and <C-p>
" inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
" inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" look in the current directory for a tags file
" autocmd FileType ruby set tags=./.tags
set tags+=.tags

" use omni completion with Eclim
let g:EclimCompletionMethod = 'omnifunc'

" use ctags with ycm
let g:ycm_collect_identifiers_from_tags_files = 1

let g:checksyntax_auto=0
" let g:syntastic_phpcs_conf = " --tab-width=4 --standard=PEARish"
let g:syntastic_php_phpcs_args = " --tab-width=4 --standard=PEARish"

" map double "m" to refresh syntax highlighting
nmap mm :syn sync fromstart<CR>

" Delete unused fugitive buffers so they don't pollute the buffer list 
autocmd BufReadPost fugitive://* set bufhidden=delete

" use fugitive to show the current branch in the status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

syntax on
set foldmethod=indent
set diffopt+=iwhite
set t_Co=256
colorscheme zenburn
colors zenburn

if &diff
    " colorscheme evening
    colorscheme jellybeans
endif

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

:let mapleader=","

" set key mappings for vim-rspec
let g:rspec_command  = "!zeus rspec --drb {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
