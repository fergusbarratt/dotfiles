call plug#begin('~/.vim/plugged')
  Plug 'lervag/vimtex'
  Plug 'heavenshell/vim-pydocstring', {'do': 'make install'} " Auto docstrings
  Plug 'gibiansky/vim-latex-objects'

  Plug 'godlygeek/tabular'
  Plug 'chrisbra/unicode.vim'
  Plug 'tpope/vim-dispatch'

  " Color Schemes
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'JuliaEditorSupport/julia-vim'
  Plug 'nvie/vim-flake8'

call plug#end()

"autocmd BufWritePost *.py call flake8#Flake8()

let g:Tex_IgnoredWarnings = 
\'Underfull'."\n".
\'Overfull'."\n".
\'specifier changed to'."\n".
\'You have requested'."\n".
\'Missing number, treated as zero.'."\n".
\'There were undefined references'."\n".
\'LaTeX Font Warning:'."\n".
\'Citation %.%# undefined'

let g:pydocstring_doq_path = "/home/fbarratt/.cache/pypoetry/virtualenvs/tinytn-SgUPqi7U-py3.8/bin/doq"

let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = "latexmk -pdflatex='pdflatex -file-line-error -synctex=1 -interaction=nonstopmode' -bibtex -pdf $*"

let g:Tex_IgnoreLevel = 8

let g:tex_flavor='latex'
let g:Tex_GotoError=0

let g:enable_bold_font=1
set bg=dark
colo gruvbox

nnoremap k gk
nnoremap j gj

filetype plugin on
filetype indent on

let g:latex_to_unicode_file_types = ".*"
set foldmethod=indent
set nocompatible
set number
set nowrap
set showmode
set smartcase
set mouse+=a
set ttymouse=xterm2

set smarttab
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

set incsearch
set history=1000
set completeopt=menuone,menu,longest
set clipboard=unnamed
set showcmd
set timeoutlen=1000
set ttimeoutlen=0
set backspace=indent,eol,start

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest:list,full
set wildmenu
set foldopen-=block

set grepprg=grep\ -nH\ $*
set autochdir
set visualbell

set mouse=a

let g:pydocstring_formatter = 'google'


imap ii <Esc>
