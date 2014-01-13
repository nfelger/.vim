execute pathogen#infect()
syntax enable
filetype plugin indent on

set incsearch   " Start searching without pressing return.
set ignorecase  " Ignore case in searches.
set smartcase   " ...except when the search specifies it.

set laststatus=2 " Always show status line.

set directory=~/tmp " Keep swp files in a single directory.

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc  " Ignore these files.

" MacVim settings.
set guifont=Menlo:h14  " Standard MacVim font, but taller.
if has('gui_running')
  " Colorscheme.
  set background=dark
  colorscheme solarized
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"

  " Make CMD-S enter normal mode after saving.
  iunmenu File.Save
  imenu <silent> File.Save <Esc>:if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
endif

" Sytastic Settings
let g:syntastic_python_flake8_args = "--max-line-length=120 --ignore=E127,E128,E126,E121,E712"

" Python-mode settings
let g:pymode_lint = 0  " Let Syntastic do the linting.
let g:pymode_folding = 0  " Don't automatically fold functions and classes.
let g:pymode_rope = 0  " Disable rope for now, maybe that's what's causing all the hangs.

" CTRLP settings
let g:ctrlp_custom_ignore = {'dir':  '\v[\/](\.(git|hg|svn)|eggs|node_modules)$'}
