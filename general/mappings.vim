" g Leader key
let mapleader=" "
" let localleader=" "
" nnoremap <Space> <Nop>

nnoremap <Space> <Nop>
" autocmd InsertEnter * let mapleader = ","
" autocmd InsertLeave * let mapleader = " "

" Better indenting
vnoremap < <gv
vnoremap > >gv

" if exists('g:vscode')

" " Simulate same TAB behavior in VSCode
" nmap <Tab> :Tabnext<CR>
" nmap <S-Tab> :Tabprev<CR>

" else
" I hate escape more than anything else

vnoremap jk <esc>
tnoremap jk <esc>
cnoremap jk <esc>
inoremap jk <C-C>
vnoremap jk <esc>
tnoremap jk <esc>


"To map <Esc> to exit terminal-mode:
tnoremap jk <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'

"To use `Ctrl+{h,j,k,l}` to navigate windows from any mode:
tnoremap <Leader>w\ <C-N><C-w>h
tnoremap <Leader>w\ <C-N><C-w>j
tnoremap <Leader>wk <C-\><C-N><C-w>k
tnoremap <Leader>wl <C-\><C-N><C-w>l
inoremap <Leader>wh <C-\><C-N><C-w>h
inoremap <Leader>wj <C-\><C-N><C-w>j
inoremap <Leader>wk <C-\><C-N><C-w>k
inoremap <Leader>wl <C-\><C-N><C-w>l
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l

" nnoremap <Leader>op :NERDTree <CR>
" autocmd FileType python nnoremap<silent><Leader>py :!./%<CR>

"moving selected text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

let g:elite_mode=0                      " Disable arrows"

"add mapping for splitting verticaly and horizontaly
" Enable spell checking, s for spell check
"" Compile and open output
"map <leader>r :w! \| !comp <c-r>%<CR><CR>
"map <leader>o :!opout <c-r>%<CR><CR>
"minibufferex
 " map <Leader>e :MBEOpen<cr>
 " map <Leader>c :MBEClose<cr>
 " map <Leader>t :MBEToggle<cr>
"writing with leader key


" Autofix some mistakes
cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" map \c i{<Esc>ea}<Esc>
" nnoremap <leader>zw :ZoomWin <CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>

" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>
" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")



"ulti-snippets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"


map <Esc><Esc> :w<CR>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
