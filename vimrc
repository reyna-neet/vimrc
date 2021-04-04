" Reyna Neet's custom vimrc file.
"
" Maintainer:	Reyna Neet <reyna.neet@gmail.com>
" Last change:	2019 Mar 8
"
" To use it, copy it to
"     for Unix and OSX:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" ~~~~~~~~~~~~
" ~~DEFAULTS~~
" ~~~~~~~~~~~~

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" ~~~~~~~~~~
" ~~VUNDLE~~
" ~~~~~~~~~~

" ~SETUP~

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"  ~PLUGINS~ 

"Speeds up fold time
Plugin 'Konfekt/FastFold'

"Better folding algorithm for Python
Plugin 'tmhedberg/SimpylFold'

"Better automatic indentation for Python
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ~~~~~~~~~~~~
" ~~BOOLEANS~~
" ~~~~~~~~~~~~

" Show line numbers using the minimum possible width
set number numberwidth=1

" Text stays on one line, cursor at edge moves regular speed
set nowrap sidescroll=1

" Turns on automatic indentation and configures indentation
set autoindent smartindent expandtab shiftwidth=2  

" Set splits to open in a way resembling English reading direction
set splitbelow splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" ~~~~~~~~~~~~
" ~~MAPPINGS~~
" ~~~~~~~~~~~~

" Sets leader characters
let mapleader = ","
let maplocalleader = "\\"

"  ~GENERAL~

" Move cursor movement to the home row, put whatever ; is supposed to be on h
noremap j h
noremap k j
noremap l k
noremap ; l
noremap h ;

" Make f actually find useful things
noremap f /

" Why does G exist when g is free real estate?
noremap g G

" Up arrow swaps line up, down arrow swaps line down
noremap <up> ddkP
noremap <down> ddp

" ~NORMAL~

" Quick mappings for editing and pulling config from this very file
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" <Ctrl-u> and <Ctrl-l> change word capitalization
nnoremap <c-u> viwU 
nnoremap <c-l> viwu

" Move between splits using <leader> 
nnoremap <leader>j <c-W><c-h>
nnoremap <leader>k <c-W><c-j>
nnoremap <leader>l <c-W><c-k>
nnoremap <leader>; <c-W><c-l>

" Toggle folds with space
nnoremap <space> za

" ~INSERT~

" Return to normal using the home row
inoremap ;l <esc>
inoremap <esc> <nop>
 
" <Ctrl-u> and <Ctrl-l> change word capitalization
inoremap <c-u> <esc>lviwUi
inoremap <c-l> <esc>lviwui

" ~VIEW~

"Put things around other things in VIEW
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>v
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>v
vnoremap <leader>( <esc>`<i(<esc>`>la)<esc>v
vnoremap <leader>{ <esc>`<i{<esc>`>la}<esc>v
vnoremap <leader>[ <esc>`<i[<esc>`>la]<esc>v
vnoremap <leader>< <esc>`<i<<esc>`>la><esc>v

" ~KNOWN SHADOWED COMMANDS~

"f - find character after cursor in current line
"<up> - move up one line (redundant with k)
"<down> - move down one line (redundant with j)

"~~~~~~~~~~~~~~~~~
"~~ABBREVIATIONS~~
"~~~~~~~~~~~~~~~~~

"Abbreviations
iabbrev @@ reyna.neet@gmail.com
iabbrev ssig Reyna Neet<cr>reyna.neet@gmail.com 

"Typos
iabbrev teh the

" ~~~~~~~~~~~~
" ~~UNSORTED~~
" ~~~~~~~~~~~~

" Python syntax highlighting
let python_highlight_all=1

" Syntax highlighting on
syntax on

