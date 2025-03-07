" Install Vim-Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins section
call plug#begin('~/.vim/plugged')

" Appearance
Plug 'vim-airline/vim-airline'       " Better status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'               " Better colorscheme than desert
Plug 'nathanaelkane/vim-indent-guides' " Visual indent guides

" Functionality
Plug 'preservim/nerdtree'            " File explorer
Plug 'ctrlpvim/ctrlp.vim'            " Fuzzy finder
Plug 'tpope/vim-surround'            " Easily change surroundings (brackets, quotes, etc)
Plug 'tpope/vim-commentary'          " Easy commenting
Plug 'jiangmiao/auto-pairs'          " Auto close brackets, quotes, etc.

call plug#end()

" Set colorscheme from plugin (after installing)
colorscheme gruvbox
set background=dark
"let g:gruvbox_contrast_light = 'soft'
" Better colors in terminal
set termguicolors

" Make the cursor more visible
set cursorcolumn

" Show invisible characters
set nolist
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" Keep some context visible when scrolling
set scrolloff=5
set sidescrolloff=5

" Highlight the 80th column
set colorcolumn=80

" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Enable mouse support
set mouse=a

" Set colorscheme (you may need to install additional colorschemes)
" colorscheme desert

" Highlight current line
set cursorline

" Indentation settings
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Show matching brackets
set showmatch

" Search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status line
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Auto switch to absolute numbers in insert mode, relative in normal mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

inoremap <D-[> <Esc>
inoremap jj <Esc>
inoremap kk <Esc>
