" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set number
set autoindent
filetype plugin indent on

set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Ag setup
set grepprg=ag

" Ctags file:
set tags=./tags;

if filereadable(expand("~/.vim.bundles"))
  source ~/.vim.bundles
endif

" Magical option alowing to copy/paste to system clipboard (y,d,p also work)
set clipboard=unnamed
