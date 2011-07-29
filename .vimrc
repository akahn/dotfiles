call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on

""""""""""""""""
""" SETTINGS
""""""""""""""""
let mapleader=","
color solarized
set bg=dark
set guifont=Bitstream\ Vera\ Sans\ Mono:h14
set guioptions-=T " Hide toolbar on launch

if has("persistent_undo")
  set undofile
  set undodir=~/.undo
endif

if has("gui_macvim")
  " full screen macvim
  set fuopt=maxvert,maxhorz
endif

set number
set incsearch
set expandtab
set sts=2
set sw=2
set ts=2
set autoindent
set ruler
set ignorecase
set smartcase
" Include git branch in statusline
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" Display status line even when there's only one window
set laststatus=2
" Show trailing whitespace
set list
set listchars=trail:·,tab:›\ 
set scrolloff=5
set autoread
set wildmenu
set gdefault
au BufRead,BufNewFile *.sass,*.haml set cursorcolumn
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.md set ft=markdown

""""""""""""""""
""" MAPPINGS
""""""""""""""""
" Quick editing and loading of .vimrc
noremap <F2> :tabe ~/.vimrc<Enter>
noremap <S-F2> :source ~/.vimrc<Enter>
" Navigate windows
noremap <C-h> <C-w><C-h>
noremap <C-l> <C-w><C-l>
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
" Alternate buffers
noremap gb <C-^>
" Close quickfix window
noremap <Leader>cc :cclose<Enter>
" Shortcut for :cnext
noremap <Leader>cn :cnext<Enter>
" Clear search highlighting
noremap <silent> <Leader>cs :noh<Enter>
" Shortcut to :tags
noremap <Leader>t :tag 
" Y copies from cursor to end of line
noremap Y y$"
" Move the rest of this line to a new line above the current one
noremap gJ C<Esc>O"<Esc>^
" Command-S should only write file if it has been modified
map <D-s> :update<Esc>
noremap <Leader>g :Gbrowse!<Esc>
" Select last pasted text
nnoremap gp `[v`]
" Open Gundo window
nnoremap <Leader>u :GundoToggle<CR>



" Don't allow accidental `:Git commit` to spawn vim
autocmd GUIEnter * let $GIT_EDITOR = 'false'
