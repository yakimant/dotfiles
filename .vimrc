" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

set ruler " bottom right info

set number
" Set not to select line numbers
" set mouse+=a

" set background=dark
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

if has("autocmd")
    filetype plugin indent on
    " autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    " autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
    autocmd BufNewFile,BufRead Fastfile set filetype=ruby
endif

" Indenting
set autoindent
set smartindent     " Add tabs there needed

set tabstop=2       " Showing \t in spaces
set shiftwidth=2    " Shifting with < or >
set softtabstop=2   " Generaly == to shifttabstop
set smarttab
set expandtab " Put spaces instead of tabs

" Folding
set foldmethod=manual " Unfolded by default
set foldlevel=99
set foldlevelstart=99
set nofoldenable    " disable folding
set pastetoggle=<F10>
" xml folding
let g:xml_syntax_folding=1
" au FileType xml setlocal foldmethod=syntax
let g:php_folding=1
au FileType php setlocal foldmethod=indent

" Windows
set winheight=30
" set winminheight=5

" Statusbar (airline, powerline, ets)
set laststatus=2

" Ag setup
set grepprg=ag

" Ctags file:
set tags=./tags;

if filereadable(expand("~/.vim.bundles"))
  source ~/.vim.bundles
endif

" Magical option alowing to copy/paste to system clipboard (y,d,p also work)
set clipboard=unnamed

" Keyboard shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <F8> :TagbarToggle<CR>
" Switch tabs like in Chrome
map <D-A-RIGHT> gt
map <D-A-LEFT> gT

"nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" Airline
" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1

" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'


" ---------- BUFFERS ----------
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
"nmap <leader>T :enew<CR>

" Move to the next buffer
"nmap <leader>l :bnext<CR>

" Move to the previous buffer
"nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
"nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
"nmap <leader>bl :ls<CR>
