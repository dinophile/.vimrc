set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-commentary'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'ap/vim-css-color'
Plugin 'crusoexia/vim-monokai'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'pangloss/vim-javascript'
Plugin 'nanotech/jellybeans.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'



call vundle#end()

filetype plugin indent on
colorscheme monokai


" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
"  Use Ag over Grep
   let g:ackprg = 'ag --vimgrep --nogroup --nocolor'
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
   let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
  " ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0

    if !exists(":Ag")
          command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
              nnoremap \ :Ag<SPACE>
    endif
endif

set splitbelow
set splitright

set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

if has('mouse')
  set mouse=a
endif
set autoindent
set expandtab

let mapleader = ","
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <leader>h :nohlsearch<cr>

set number
set relativenumber
set numberwidth=5
set textwidth=80
set colorcolumn=+1
set history=1000
set scrolloff=4
syntax on
set nofoldenable
highlight StatusLine ctermfg=grey ctermbg=red
nmap <Ct> :tabnew<cr>
nmap xc :w<cr>
imap xc :w<cr>
nmap 0 ^
imap kj <esc>
nmap k gk
nmap j gj
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>co ggVG*y 
map <leader>i mmgg=G`m<cr>
map <leader>p :set paste<cr>o<esc>"*]p :set nopaste<cr>

autocmd FileType yml let b:did_indent = 1

autocmd Filetype help nnoremap <buffer>q :q<cr>

" RENAME CURRENT FILE (thanks Gary Bernhardt)
 function! RenameFile()
   let old_name = expand('%')
     let new_name = input('New file name: ', expand('%'), 'file')
       if new_name != '' && new_name != old_name
           exec ':saveas ' . new_name
           exec ':silent !rm ' . old_name
           redraw!
       endif
  endfunction
 nmap <Leader>n :call RenameFile()<cr>



 set sw=2
 autocmd BufRead *\.java setlocal sw=4

 au BufNewFile,BufRead *.feature set sw=2
 au BufNewFile,BufRead *.rb set sw=2
 au BufNewFile,BufRead *.rb set ts=2
 au BufNewFile,BufRead *.rb set sts=2
 au BufNewFile,BufRead *.rb set autoindent
 au BufNewFile,BufRead *.rb set smartindent
 au BufNewFile,BufRead *.rb set expandtab

 au BufNewFile,BufRead *.feature set sw=2
 au BufNewFile,BufRead *.css.scss set sw=2
 au BufNewFile,BufRead *.css.scss set ts=2
 au BufNewFile,BufRead *.css.scss set sts=2
 au BufNewFile,BufRead *.css.scss set autoindent
 au BufNewFile,BufRead *.css.scss set smartindent
 au BufNewFile,BufRead *.css.scss set expandtab

 au BufNewFile,BufRead *.php set sw=2
 au BufNewFile,BufRead *.php set ts=2
 au BufNewFile,BufRead *.php set sts=2
 au BufNewFile,BufRead *.php set autoindent
 au BufNewFile,BufRead *.php set smartindent
 au BufNewFile,BufRead *.php set expandtab

 au BufNewFile,BufRead *.feature set sw=2
 au BufNewFile,BufRead *.html set sw=2
 au BufNewFile,BufRead *.html set ts=2
 au BufNewFile,BufRead *.html set sts=2
 au BufNewFile,BufRead *.html set autoindent
 au BufNewFile,BufRead *.html set smartindent
 au BufNewFile,BufRead *.html set expandtab

 au BufNewFile,BufRead *.feature set sw=2
 au BufNewFile,BufRead *.css set sw=2
 au BufNewFile,BufRead *.css set ts=2
 au BufNewFile,BufRead *.css set sts=2
 au BufNewFile,BufRead *.css set autoindent
 au BufNewFile,BufRead *.css set smartindent
 au BufNewFile,BufRead *.css set expandtab

 au BufNewFile,BufRead *.js set sw=2
 au BufNewFile,BufRead *.js set ts=2
 au BufNewFile,BufRead *.js set sts=2
 au BufNewFile,BufRead *.js set autoindent
 au BufNewFile,BufRead *.js set smartindent
 au BufNewFile,BufRead *.js set expandtab 
 
 au BufNewFile,BufRead *.erb set sw=2
 au BufNewFile,BufRead *.erb set ts=2
 au BufNewFile,BufRead *.erb set sts=2
 au BufNewFile,BufRead *.erb set autoindent
 au BufNewFile,BufRead *.erb set smartindent
 au BufNewFile,BufRead *.erb set expandtab

 let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
 let g:snipMate.scope_aliases = {}
 let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'"
 let g:snipMate.scope_aliases['start.html'] = 'html'"

 command! Q q " Bind :Q to :q
 command! Qall qall
 command! QA qall
 command! E e
