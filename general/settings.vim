set nocompatible

syntax on
syntax enable
set termguicolors

"genral system configuration
set mouse=a
set nu
set smartcase
set number relativenumber
set incsearch
" set hlsearch
set undodir=~/.vim/undo-dir
set nohlsearch
set ic
set showmode
set hidden
set signcolumn=yes
" set nowrap
" set conceallevel=3
set showcmd
set backspace=indent,eol,start
set history=200
set ruler
set wildmenu
set ttimeout
set ttimeoutlen=101
set display=truncate
set nrformats-=octal
set autowriteall
set tabstop=4
set expandtab
set smartcase
set shiftwidth=4
set ignorecase
set softtabstop=4
set cmdheight=1
set nobackup
set writebackup
set t_Co=256
set autoindent
set fillchars+=vert:'
" set cursorline
" set cursorcolumn
set textwidth=78
set scrolloff=7
" highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2b
" highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2b
" terminal disable cursorline and cursorcolumn

" open new split panes to right and below
set splitright
set splitbelow

inoremap <C-U> <C-G>u<C-U>

filetype plugin on
filetype plugin indent on

autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif

map Q gq

" macthit plugin
packadd! matchit
" supporting true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"enable true colors
if (has("termguicolors"))
 set termguicolors
endif

" Use system clipboard
set clipboard+=unnamedplus

"center when in inser mode
autocmd InsertEnter * norm zz

"remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"folding code
set foldmethod=marker

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" == AUTOCMD ================================
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx
au BufRead,BufNewFile *.scss set filetype=scss.css
"" == AUTOCMD END ================================

" sass
autocmd FileType scss set iskeyword+=-
" javascript
let g:javascript_plugin_jsdoc = 1

"ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"dev docs
set keywordprg=:dd

augroup basics
  autocmd!
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  "Disables automatic commenting on newline:
  autocmd FileType vim setlocal foldmethod=marker

  " You can't stop me
cmap w!! w !sudo tee %
"python provider for nvim
let g:python3_host_prog = '/usr/bin/python3'
" let g:python3_host_prog = expand("")
" let g:python3_host_prog = expand("~/.miniconda/envs/neovim/bin/python3.8") " <- example
"node provider for nvim
" let g:node_host_prog = expand("")
" let g:node_host_prog = expand("~/.nvm/versions/node/v12.16.1/bin/neovim-node-host") " <- example

set list
set listchars=
set listchars+=tab:·\
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:░

" <CR> between pairs insert new indented line
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
:vmap u <Nop>


"to fix comments in coc-config file
 autocmd FileType json syntax match Comment +\/\/.\+$+

" Syntax highlighting
let g:python_highlight_all=1


" Functions
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+`
function! OpenTerminal()
split term://zsh
resize 8
set nocursorcolumn
set nocursorline
endfunction

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
