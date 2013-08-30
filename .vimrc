execute pathogen#infect()
syntax enable
filetype plugin indent on

set incsearch   " Start searching without pressing return.
set ignorecase  " Ignore case in searches.
set smartcase   " ...except when the search specifies it.

set laststatus=2 " Always show status line.

set directory=~/tmp " Keep swp files in a single directory.

set guifont=Menlo:h14  " Standard MacVim font, but taller.
if has('gui_running')
  set background=light
  colorscheme solarized
endif

" Sytastic Settings
let g:syntastic_python_flake8_args = "--max-line-length=120 --ignore=E127,E128,E126,E121"

" Python-mode settings
let g:pymode_lint = 1  " Let Syntastic do the linting.
let g:pymode_folding = 0  " Don't automatically fold functions and classes.
