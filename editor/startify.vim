let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/okami.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/code',
           \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
" let g:startify_custom_footer = 'Okami 狼'
let g:startify_custom_header = [
     \ '                                      .                  ',
     \ '                                     / V\                ',
     \ '             █             狼      / `  /                ',
     \ '         ███ █                   <<|                     ',
     \ '         █ █ █ █ ███ █████ █       /    |                ',
     \ '         █ █ ██    █ █ █ █ █     /      |                ',
     \ '         █ █ ██  ███ █ █ █ █   /        |                ',
     \ '         ███ █ █ ███ █ █ █ █ /    \  \ /                 ',
     \ '                            (      ) | |                 ',
     \ '                    ________|   _/_  | |                 ',
     \ '                  <__________\______)\__)                ',
     \]
" let g:startify_custom_header = [
" \ '                   _                          ',
" \ '                  /\)                         ',
" \ '                 /\/                          ',
" \ '                /\/                           ',
" \ '              _/L/                █  戦士     ',
" \ '             (/\_)███             █           ',
" \ '             /%/  █   ███ ███ ███ ███ █       ',
" \ '            /%/    █  ███ █ █ █   █ █ █       ',
" \ '           /%/      █ █   █ █   █ █ █ █       ',
" \ '          /%/     ███ ███ █ █ ███ █ █ █       ',
" \ '         /%/                                  ',
" \ '        /%/                                   ',
" \ '       /%/                                    ',
" \ '      /%/                                     ',
" \ '     /%/                                      ',
" \ '    /%/                                       ',
" \ '   /,'
" \]


autocmd ColorScheme gruvbox highlight Normal ctermbg=235


