set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/loremipsum'
Plugin 'wincent/Command-T'
" Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'    
Plugin 'tpope/vim-cucumber'
Plugin 'vim-ruby/vim-ruby'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'tpope/vim-rake'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'rking/ag.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'slim-template/vim-slim'
Plugin 'mileszs/ack.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'vim-scripts/matchit.zip'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"" Optional:
Plugin 'honza/vim-snippets'

call vundle#end()



filetype plugin indent on

let g:neosnippet#snippets_directory='~/.vim/snippets'

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

map <Leader>tf :CommandTFlush<CR>
map <Leader>tm :CommandT db/migrate<CR>
map <Leader>tv :CommandT db/migrate<CR>

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
