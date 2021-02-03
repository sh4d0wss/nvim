lua <<EOF
require('indent_guides').setup({
  -- put your options in here
    indent_levels = 30;
    indent_guide_size = 3;
    indent_start_level = 1;
    indent_space_guides = true;
    indent_tab_guides = true;
    indent_soft_pattern = '\\s';
    exclude_filetypes = {'help','dashboard','dashpreview','LuaTree','vista','sagahover'}; even_colors = { fg ='#2E323A',bg='#34383F' };
    odd_colors = {fg='#34383F',bg='#2E323A'};
})

EOF
