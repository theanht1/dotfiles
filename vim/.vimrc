"""
" Vim Plug
"""

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'albfan/nerdtree-git-plugin'
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

Plug 'tpope/vim-obsession'
Plug 'junegunn/goyo.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }


call plug#end()

"""""""""""""""""""""""
""" Basic Configuration
"""""""""""""""""""""""

" show number
set number

" show command in NORMAL mode
set showcmd

" 2 soft tabs
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

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

" Mouse
set mouse=a

" Fold
"set foldmethod=indent
"set foldlevel=1
"set foldclose=all

" Tab
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

" Copy to clipboard
noremap <C-y> :w !xclip -selection clipboard -i<CR>


" Save last session position
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  endif

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
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
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

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
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
set rtp+=/usr/bin/fzf
map <C-P> :FZF<CR>
