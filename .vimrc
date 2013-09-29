set nocompatible " choose no compatibility with legacy vi
filetype off

"" Vundle
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Defaults everyone can agree on
Bundle 'tpope/vim-sensible'

" File navigation, searching and versioning.
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'

" Editing helpers.
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'sickill/vim-pasta'
Bundle 'tpope/vim-tbone'

" Language packs.
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'jnwhiteh/vim-golang'
Bundle 'nono/vim-handlebars'
Bundle 'cakebaker/scss-syntax.vim'

" Colorscheme
Bundle 'altercation/vim-colors-solarized'

" Default indentation style for unknown files. This is overridden by
" ~/.editorconfig with the Bundle below.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Read .editorconfig files. This has to be last so it takes precedence.
" See http://editorconfig.org/
Bundle 'editorconfig/editorconfig-vim'

set number " show line numbers
set cursorline " highlight the line containing the cursor
set hidden " allow buffers to be hidden
set clipboard=unnamed " fix clipboard access in terminal

" Use , as the leader key.
let mapleader=","

"" Whitespace
set list " show listchars

"" Searching
set hlsearch " highlight matches
set ignorecase " searches are case insensitive...

"" zsh like command mode completion
set wildmode=longest,list:longest,full

set background=dark
colorscheme solarized

" Remember last location in file, but not for commit messages.
" see :help last-position-jump
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

" Configure ack.vim to use ag(1)
let g:ackprg = 'ag --nogroup --nocolor --column'

""""""
"""""" Key mappings
""""""

" Cleanup trailing whitespace and tabs with F5
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" Jump between buffers
nnoremap <leader><leader> <C-^>

" Use leader-f to start an ack search.
nnoremap <leader>f :Ack!<SPACE>

" Map Tab to jump between brackets, quotes etc.
nnoremap <TAB> %

" Quickly jump in and out of paste mode.
nnoremap <leader>p :set paste!<CR>:set paste?<CR>

" CtrlP custom ignores
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|public/uploads$\|venv$',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }

" Map W and Q to their smaller counterparts.
command! W :w
command! Q :q

" Skip the vim intro screen
set shortmess+=I

let g:markdown_fenced_languages = ['ruby', 'javascript', 'html']
