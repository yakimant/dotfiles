set nocompatible

call plug#begin('~/.vim/bundle')

" Let Vundle manage Vundle
"Plug 'gmarik/vundle'

" Color schemes
Plug 'altercation/vim-colors-solarized'

"Plug 'tomasr/molokai'

" Javascript
"Plug 'pangloss/vim-javascript'

" Define bundles via Github repos
" Rails:
"Plug 'thoughtbot/vim-rspec'
"Plug 'tpope/vim-bundler'
"Plug 'tpope/vim-cucumber'
"Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" PHP:
"Plug 'spf13/PIV'
"Plug '2072/PHP-Indenting-for-VIm'
"Plug 'StanAngeloff/php.vim'
"Plug 'vim-scripts/phpfolding.vim'

" Powershell
"Plug 'PProvost/vim-ps1'
" HTML:
"Plug 'slim-template/vim-slim'
"Plug 'tpope/vim-ragtag'

" JS/CS:
"Plug 'kchmck/vim-coffee-script'

" JSON
"Plug 'elzr/vim-json'

" Elixir
"Plug 'elixir-lang/vim-elixir'
"Plug 'mattreduce/vim-mix'

" Kotlin:
Plug 'udalov/kotlin-vim'

" Common:
"Plug 'tpope/vim-surround'
"Plug 'vim-scripts/ctags.vim'
"Plug 'steffanc/cscopemaps.vim'
"Plug 'majutsushi/tagbar'
"Plug 'garbas/snipmate.vim'
"Plug 'rking/ag.vim'
"Plug 'bling/vim-airline'
" Show diff for swp file
Plug 'chrisbra/Recover.vim'

" ae & ie motions for entire file
"Plug 'kana/vim-textobj-user'
"Plug 'kana/vim-textobj-entire' 

" Add commentary support (gc, gcc)
"Plug 'tpope/vim-commentary.git'

call plug#end()

colorscheme solarized
