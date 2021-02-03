" vim dashboard
" Default value is clap
let g:dashboard_default_executive ='fzf'
" let g:dashboard_default_header = 'animegirl19'
" let g:dashboard_session_directory = '~/.config/nvim/sessions'

let g:dashboard_custom_header = [
  \'               ▄▄██████████▄▄             ',
  \'               ▀▀▀   ██   ▀▀▀             ',
  \'       ▄██▄   ▄▄████████████▄▄   ▄██▄     ',
  \'     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ',
  \'    ████▄ ▄███▀              ▀███▄ ▄████  ',
  \'   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ',
  \'   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ',
  \'    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ',
  \'       ███           ▀▀           ███     ',
  \'       ██████████████████████████████     ',
  \'   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ',
  \'   ███  ███ ███   ██    ██   ███▄███  ███ ',
  \'   ▀██▄████████   ██    ██   ████████▄██▀ ',
  \'    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ',
  \'     ▀███▄  ▀███████    ███████▀  ▄███▀   ',
  \'       ▀███    ▀▀██████████▀▀▀   ███▀     ',
  \'         ▀    ▄▄▄    ██    ▄▄▄    ▀       ',
  \'               ▀████████████▀             ',
\]






" autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>

" eg : "SPC mean the leaderkey
    let g:dashboard_custom_shortcut={
      \ 'last_session'       : 'SPC s l',
      \ 'find_history'       : 'SPC f h',
      \ 'find_file'          : 'SPC f f',
      \ 'new_file'           : 'SPC f n',
      \ 'change_colorscheme' : 'SPC h t',
      \ 'find_word'          : 'SPC f r',
      \ 'book_marks'         : 'SPC f m',
      \ }

