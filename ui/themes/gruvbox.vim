let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[42;2;%lu;%lu;%lum"
endif

let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark
let g:airline_theme = 'gruvbox'


" colorscheme gruvbox-material
" let g:gruvbox_material_background = 'hard'
" set background=dark
" let g:airline_theme = "codedark"
