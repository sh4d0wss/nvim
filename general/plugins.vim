" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"plugins start here
call plug#begin(stdpath('data') . '/plugged')
    "<----- statusline
    Plug 'glepnir/galaxyline.nvim'
    "<----- themes
    Plug 'drewtempelmeyer/palenight.vim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'joshdick/onedark.vim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'ajh17/Spacegray.vim'
    " TODO maybe remove these themes
    " Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
    " Plug 'AlessandroYorba/Sierra'
    " Plug 'cocopon/iceberg.vim'
    " ----> Cool start screen for vim
    Plug 'glepnir/dashboard-nvim'
    "----> Scratchpad for hackers
    Plug 'metakirby5/codi.vim'
    " ----> Nerdtree file explorer git and icons
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'ryanoasis/vim-devicons'
    "----> Better syntax support
    Plug 'sheerun/vim-polyglot'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    "----> Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'codota/tabnine-vim'
    "----> Text Navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'
    Plug 'easymotion/vim-easymotion'
    "----> Enhance vim functionality
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'jiangmiao/auto-pairs'
    " Plug 'fholgado/minibufexpl.vim'
    "----> Tabs or Spaces ?
    Plug 'tpope/vim-sleuth'
    Plug 'editorconfig/editorconfig-vim'
    "----> smooth scrolling
    Plug 'psliwka/vim-smoothie'
    "----> HTML support
    Plug 'AndrewRadev/tagalong.vim'
    Plug 'alvan/vim-closetag'
    Plug 'glepnir/indent-guides.nvim'
    Plug 'Valloric/MatchTagAlways'
    "----> Fuzzy finding
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    " Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'mileszs/ack.vim'
    "----> Have the file system follow you around
    Plug 'airblade/vim-rooter'
    "----> Zen mode
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    "----> Vim notes and todo
    Plug 'vimwiki/vimwiki'
    Plug 'tools-life/taskwiki'
    Plug 'jceb/vim-orgmode'
    " Plug 'tbabej/taskwiki'
    "--- Vim doc
    " Plug 'kkoomen/vim-doge'
    Plug 'romainl/vim-devdocs'
    " Plug 'Shougo/echodoc.vim'
    "----> Javascript support
    Plug 'pangloss/vim-javascript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'moll/vim-node'
    "----> Typescript support
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'leafgarland/typescript-vim'
    "----> PHP support
    " Plug 'StanAngeloff/php.vim', {'for': 'php'}
    " Plug '2072/PHP-Indenting-for-VIm'
    " Plug 'rayburgemeestre/phpfolding.vim'
    " Plug 'stephpy/vim-php-cs-fixer'
    " Plug 'alvan/vim-php-manual', {'for': 'php'}
    "<---- Add some color
    " Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'luochen1990/rainbow'
    Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    "----> Vim Git support
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/gv.vim'
    Plug 'tpope/vim-rhubarb'
    Plug 'rhysd/git-messenger.vim'
    "----> Vim tmux
    Plug 'christoomey/vim-tmux-navigator'
    "----> Vim mapping
    Plug 'liuchengxu/vim-which-key'
    "----> Snipets
    Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'
    Plug 'mattn/emmet-vim'
    " dates
    " Plug 'tpope/vim-speeddating'
    " convert binary, hex, etc..
    " Plug 'glts/vim-radical'
    " files
    " Plug 'tpope/vim-eunuch'
    " " Vista
    Plug 'liuchengxu/vista.vim'
    " " Making stuff
    Plug 'neomake/neomake'
    "===> some visual stuff
    Plug 'turbio/bracey.vim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'RRethy/vim-illuminate'
    Plug 'romgrk/barbar.nvim'
    " async tasks
    " Plug 'skywind3000/asynctasks.vim'
    " Plug 'skywind3000/asyncrun.vim'
    Plug 'machakann/vim-highlightedyank'
    " undo time travel
    Plug 'mbbill/undotree'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " better gx keys
    Plug 'stsewd/gx-extended.vim'
    " markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    Plug 'moll/vim-bbye'
    " TODO depuging coming soon
    "----> vim debugger
    " Plug 'szw/vim-maximizer'
    " Plug 'puremourning/vimspector'
    " Plug 'sidorares/node-vim-debugger'
    " Plug 'vim-vdebug/vdebug'
    " Plug '907th/vim-auto-save'
    " Plug 'vim-scripts/ZoomWin'
    " Plug 'Yggdroot/indentLine'
    " Plug 'kshenoy/vim-signature'
    " TODO add firenvim support
    " Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(1) } }
    " TODO cool plugins to add
    " Plug 'tpope/vim-sleuth'
    " Plug 'nvim-telescope/telescope.nvim'
    " Plug 'nvim-lua/popup.nvim'
    " Plug 'nvim-lua/plenary.nvim'
    " Plug 'nvim-telescope/telescope.nvim'
    " Plug 'wfxr/minimap.vim'
    " Plug 'mfussenegger/nvim-dap'
    " TODO add linting with ale
    " Plug 'dense-analysis/ale'
    "Plugin graveyard
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'hardcoreplayers/spaceline.vim'
    " Plug 'majutsushi/tagbar'
    " Plug 'hushicai/tagbar-javascript.vim'
    " Plug 'dhruvasagar/vim-zoom'
    " Plug 'mhinz/vim-startify'
    " Plug 'preservim/nerdtree' |
            " \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            " \ Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Plug 'ChristianChiarulli/far.vim'
    " sessions
    Plug 'xolox/vim-session'
    Plug 'xolox/vim-misc'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
