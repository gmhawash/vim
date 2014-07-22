set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/loremipsum'
Bundle 'wincent/Command-T'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'    
Bundle 'tpope/vim-cucumber'
Bundle 'vim-ruby/vim-ruby'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'tpope/vim-rake'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'rking/ag.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'slim-template/vim-slim'
Bundle 'mileszs/ack.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'vim-scripts/matchit.zip'
Bundle 'ervandew/supertab'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Optional:
Bundle "honza/vim-snippets"

let g:neosnippet#snippets_directory='~/.vim/snippets'

filetype plugin indent on

let mapleader="\\"

let g:session_autosave='yes'
let g:session_autoload='yes'
let g:session_directory='./'

" rainbow_paranthesis
au VimEnter * RainbowParenthesesActivate
au VimEnter * RainbowParenthesesLoadRound
au VimEnter * RainbowParenthesesLoadSquare
au VimEnter,Syntax,BufRead * RainbowParenthesesLoadBraces

color ir_black

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" Toggle search highlight
nnoremap <F3> :set hlsearch!<CR>

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

  " Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk
nnoremap <Leader>a :Ack 

" format the entire file
nmap <leader>fef ggVG=

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <C-h> 2<C-w><
map <silent> <C-j> 2<C-W>-
map <silent> <C-k> 2<C-W>+
map <silent> <C-l> 2<C-w>>

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" NERDTree
map <c-e> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_ruby_exec = '/opt/rubies/ruby-1.9.3-p392/bin/ruby'

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" Go programming
set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim

" Quit with :Q
" command -nargs=0 Quit :qa!

" %% Expands to current file folder
cnoremap %% <C-R>=expand('%:h').'/'<cr>
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au BufRead,BufNewFile *.cap set filetype=ruby
