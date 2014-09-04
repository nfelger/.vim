set nocompatible              " be iMproved, required by Vundle
filetype off                  " required by Vundle

"
" initialize Vundle
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'   " let Vundle manage Vundle, required

" Code display
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

" Language
Plugin 'tpope/vim-surround'
Plugin 'klen/python-mode'
Plugin 'nginx.vim'
Plugin 'jneen/ragel.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'leshill/vim-json'

" Interface
Plugin 'taglist.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'

" Integrations
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'

" Commands
Plugin 'tpope/vim-unimpaired'
Plugin 'tomtom/tcomment_vim'

" Other
Plugin 'tpope/vim-sensible'
Plugin 'davidoc/taskpaper.vim'

call vundle#end()            " required by Vundle

filetype plugin indent on    " required by Vundle

" MacVim settings.
set guifont=Menlo\ for\ Powerline:h16        " Standard MacVim font was Menlo:h14.
if has('gui_running')
  " Colorscheme.
  set background=light
  colorscheme solarized

  " Make CMD-S enter normal mode after saving.
  iunmenu File.Save
  imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>

  " Airline
  let g:airline_powerline_fonts = 1

  " Treat option as meta instead of inserting non-ASCII chars.
  if exists("&macmeta")
    set macmeta
    " Toggle treating option as meta
    :noremap <D-j> :set invmmta<CR>
  endif
endif


set incsearch                " Start searching without pressing return.
set ignorecase               " Ignore case in searches.
set smartcase                " ...except when the search specifies it.
set nohlsearch               " Don't highlight search matches.
set number                   " Enable line numbers.
set laststatus=2             " Always show status line.
set directory=~/tmp          " Keep swp files in a single directory.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc  " Ignore these files.

let mapleader=","

set list                     " Show whitespace
set listchars=tab:▸\ ,eol:⏎,trail:\ ,extends:▶︎,precedes:◀︎,nbsp:+
let g:solarized_visibility="low"
highlight SpecialKey guibg=red


" Sytastic Settings
let g:syntastic_python_flake8_args = "--max-line-length=120 --ignore=E127,E128,E126,E121,E711,E712"
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list=1

" Python-mode settings
let g:pymode_lint = 0        " Let Syntastic do the linting.
let g:pymode_folding = 0     " Don't automatically fold functions and classes.
let g:pymode_rope = 0        " Disable rope for now, maybe that's what's causing all the hangs.
let g:pymode_options_max_line_length = 100

" CTRLP settings
let g:ctrlp_custom_ignore = {'dir':  '\v[\/](\.(git|hg|svn)|eggs|node_modules)$'}

" Ag settings
let g:agprg="ag --column --smart-case"
