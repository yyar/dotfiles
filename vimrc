let s:darwin = has('mac')

set nocompatible              " be iMproved, required

" TODO: add fzf to rtp

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" find a vim plugin in vimawesome 
" <c-x><c-v>
if empty(glob('~/.vim/plugin/vimawesome.vim'))
  silent !curl -fLo ~/.vim/plugin/vimawesome.vim --create-dirs
    \ https://gist.githubusercontent.com/junegunn/5dff641d68d20ba309ce/raw/8a95cd2e9580be004caab4db9e6dfe164811db2b/vimawesome.vim
  autocmd VimEnter source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

" Essential
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround' " all of surroundings 
Plug 'kshenoy/vim-signature' " toggle and display marks

" for git
Plug 'mhinz/vim-signify' " for diff in editor and jumping with hunks 
Plug 'tpope/vim-fugitive' " for command in vim

" Very useful
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors' " multiple cursor with ctrl+n
if s:darwin
  Plug 'junegunn/vim-xmark' " for markdown
endif
Plug 'machakann/vim-highlightedyank'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Theme and color schemes
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'


Plug 'vimwiki/vimwiki'
call plug#end()


set background=dark

if has("gui_running")
    colorscheme Tomorrow-Night
else
    colorscheme iceberg
    let g:airline_theme='iceberg'
endif

set nu

set nrformats-=octal

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab "???

set list
set listchars=tab:▸\ ,

" set fencs=ucs-bom,utf-8,euc-kr,cp949
set hlsearch
set smartcase ignorecase
set encoding=utf-8

set backspace=indent,eol,start
set foldlevelstart=99
" ???
set formatoptions+=1
if has('patch-7.3.541')
  set formatoptions+=j
endif
if has('patch-7.4.338')
  let &showbreak = '↳ '
  set breakindent
  set breakindentopt=sbr
endif
" ??? end

set hidden

set undofile
set undodir=~/.vim/undodir

" for vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#ycm#enabled = 1
" turn on the buffer list
let g:airline#extensions#tabline#enabled = 1
" show only filename in buffer
let g:airline#extensions#tabline#fnamemod = ':t'

" <F8> | Tagbar
nnoremap <F8> :TagbarToggle<cr>

" <F10> | NERD Tree
nnoremap <F10> :NERDTreeToggle<cr>

" for fzf
" FZF shortcut
" TODO: check unused setting
nnoremap <Leader>f :GitFiles<cr>
nnoremap <Leader>F :FZF<cr>
nnoremap <silent> <Leader><Leader> :Tags<cr>
nnoremap <silent> <Leader>B :BTags<cr>
nnoremap <silent> <Leader>b :Buffers<cr>
nnoremap <silent> <Leader>e :Buffers<cr>
nnoremap <silent> <Leader>E :Buffers<cr>
nnoremap <silent> <Leader>a :Ag<cr>
nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':    'colo',
\   'options': '+m',
\   'right':    30
\ })<CR>
" let g:fzf_launcher = "In_a_new_term_function %s"
let g:fzf_history_dir = '~/.local/share/fzf-history'


" for vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" Buffers
nnoremap ]b :bnext<cr>
nnoremap [b :bprev<cr>


" mouse
silent! set ttymouse=xterm2
set mouse=a


" disable-arrowkeys.vim
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" prevent miss typo by ime
ca ㅈ w
ca ㅈㅂ wq
ca ㅂ q
ca ㅂㅁ qa
