nmap <silent> <C-a> <Plug>(ale_next_wrap)
 function! LinterStatus() abort
     let l:counts = ale#statusline#Count(bufnr(''))
     let l:all_errors = l:counts.error + l:counts.style_error
     let l:all_non_errors = l:counts.total - l:all_errors
     return l:counts.total == 0 ? 'OK' : printf(
         \   '%d⨉ %d⚠ ',
         \   all_non_errors,
         \   all_errors
         \)
 endfunction
 set statusline+=%=
 set statusline+=\ %{LinterStatus()}

 let g:ale_lint_on_enter = 0
 let g:ale_lint_on_save = 1
 let g:ale_sign_error = '●'
 let g:ale_sign_warning = '.'

" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['eslint'],
" \}

" disable linting while typing
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_keep_list_window_open=0
let g:ale_set_quickfix=0
let g:ale_list_window_size = 5
let g:ale_php_phpcbf_standard='PSR2'
let g:ale_php_phpcs_standard='phpcs.xml.dist'
let g:ale_php_phpmd_ruleset='phpmd.xml'
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'php': ['phpcbf', 'php_cs_fixer', 'remove_trailing_lines', 'trim_whitespace'],
  \}
let g:ale_fix_on_save = 1
