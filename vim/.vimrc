"""
" Vim Plug
"""

call plug#begin()
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Nequo/vim-allomancer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'elixir-editors/vim-elixir'
Plug 'digitaltoad/vim-pug'
Plug 'tomlion/vim-solidity'
Plug 'posva/vim-vue'
Plug 'isRuslan/vim-es6'
" Plug 'zxqfl/tabnine-vim'
Plug 'tpope/vim-obsession'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'itchyny/calendar.vim'

call plug#end()

"""""""""""""""""""""""
""" Basic Configuration
"""""""""""""""""""""""

let mapleader=","

" show number
set number

" show command in NORMAL mode
set showcmd

" 2 soft tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" auto reload change from disk
set autoread

" indent helpers
filetype indent on
set smarttab

" Stop creating .swp files
set nobackup
set noswapfile

set belloff=all

" Fix backspace
set backspace=indent,eol,start

" Search highlight
set hlsearch
set incsearch

set ruler

set scrolloff=1

" Fold
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all

" Tab
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
tnoremap <C-h> <C-w>:tabprevious<CR>

" Copy to clipboard
noremap <C-y> "*y

" Custom
nnoremap <leader>ev :split $MYVIMRC<cr>

" Common comment line of code
autocmd FileType python,ruby nnoremap <buffer> <leader>/ I# <esc>
autocmd FileType python,ruby vnoremap <buffer> <leader>/ I# <esc>
autocmd FileType javascript,rust nnoremap <buffer> <leader>/ I// <esc>
autocmd FileType javascript,rust vnoremap <buffer> <leader>/ I// <esc>
autocmd FileType vim nnoremap <buffer> <leader>/ I" <esc>
autocmd FileType vim vnoremap <buffer> <leader>/ I" <esc>

" Omni complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" View last session
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Terminal
tnoremap <Esc> <C-\><C-n>

""""
"THEME
"""
" syntax on
" color dracula

augroup filetype javascript syntax=javascript

try
source ~/.theme.vim
catch
endtry


"""""""""""
""" Plugins
"""""""""""

"""" NERD Tree
" toggle
map <C-\> :NERDTreeToggle<CR>

" open NERD tree auto when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if only window left open is NERD
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Display hidden files
let NERDTreeShowHidden=1


""" Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '' : ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction


"""
"
"""
set encoding=utf8
set guifont=Hack\ Nerd\ Font\ Regular\ 11


""" Theme
"set termguicolors
"color allomancer

""" Vim Better Whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave


""" Gitgutter
highlight GitGutterAdd    guifg=#073642 ctermfg=2
highlight GitGutterChange guifg=#073642 ctermfg=3
highlight GitGutterDelete guifg=#073642 ctermfg=1

""" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

""" Markdown
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = "safari"
" let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 2
let g:mkdp_echo_preview_url = 1
let g:mkdp_port = 7373


" fzf.vim bindings
set rtp+=/usr/local/opt/fzf
map <C-P> :FZF<CR>

" Calendar
" let g:calendar_google_calendar = 1
" source ~/.cache/calendar.vim/credentials.vim
