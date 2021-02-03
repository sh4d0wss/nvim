" If you only want to save the current tab page:
" set sessionoptions-=tabpages

" If you don't want help windows to be restored:
" set sessionoptions-=help

" Don't save hidden and unloaded buffers in sessions.
set sessionoptions-=buffers
" Don't persist options and mappings because it can corrupt sessions.
set sessionoptions-=options

let g:session_directory = '~/.config/nvim/sessions/'

" Disable all session locking - I know what I'm doing :-).
" let g:session_lock_enabled = 0
