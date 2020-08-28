"--------------------------------Plugins---------------------------------------------

call plug#begin()

"------------------------------------------------------------------------------------
"THEME AND INTERFACE
"------------------------------------------------------------------------------------
    "Gruvbox
    Plug 'morhetz/gruvbox'

    "Syntax  Highlighting
    Plug 'sheerun/vim-polyglot'
    
    "Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    "Icons File Manager
    Plug 'ryanoasis/vim-devicons'

"------------------------------------------------------------------------------------
" FiLES
"------------------------------------------------------------------------------------

    "Files Search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    "Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    "NerdTree
    Plug 'preservim/nerdtree'

"------------------------------------------------------------------------------------
" AUTOCOMPLETE
"------------------------------------------------------------------------------------

    "Autocomplete Langs COC.NVIM
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

"------------------------------------------------------------------------------------
" FEATURES - 
"------------------------------------------------------------------------------------

    "Terminal
    Plug 'tc50cal/vim-terminal'

    "Syntax check
    Plug 'dense-analysis/ale'
    
    "Closetag HTML
    Plug 'alvan/vim-closetag'
    
    "Color Pairs
    Plug 'luochen1990/rainbow'
    
    "Ident 
    Plug 'Yggdroot/indentLine'   
    
    "Comment
    Plug 'preservim/nerdcommenter'

"------------------------------------------------------------------------------------
" LANGUAGES PLUGS
"------------------------------------------------------------------------------------

    "Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    
    "JS

    Plug 'leafOfTree/vim-vue-plugin'
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'iloginow/vim-stylus'
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'leafgarland/typescript-vim'


"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------
call plug#end()

"------------------------------------------------------------------------------------
" COLORS
"------------------------------------------------------------------------------------

    
    "Theme and BG
    colorscheme gruvbox
    set background=dark
    let g:gruvbox_contrast_dark='hard'
    
    "Airline"
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    
    "Color Pairs
    let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
    let g:rainbow_conf = {
    \   'guifgs': ['#d65d0e','#cc241d','#458588', '#d79921','#98971a','#b16286', '#689d6a'],
    \}

    "Ident
    let g:indentLine_color_term = 239
    let g:indentLine_color_tty_light = 7 " (default: 4)
    let g:indentLine_color_dark = 1 " (default: 2)
    let g:indentLine_char_list = ['|', '¦', '┆', '｜']
    let g:indentLine_color_gui = '#434C5E'

"------------------------------------------------------------------------------------
" PREFERENCES
"------------------------------------------------------------------------------------

    "Char
    set encoding=UTF-8
    
    "Use real colors
    set termguicolors
    
    "Change files without saving
    set hidden
    
    "See numbers on lines
    set number
    
    "See numbers relatives on line
    set relativenumber
    
    "Preview in real time
    set inccommand=split
    
    "Noswap
    set noswapfile
    set nobackup
    set nowritebackup
    set noundofile   
    
    "Autosave
    set autowrite
    
    "Filetype
    filetype on
    filetype plugin indent on
    filetype plugin on

    "Cursorline
    set cursorline

    "Syntax
    syntax on

    "Ident
    set tabstop=4
    set expandtab
    retab
    set sw=4
    
    "Line numbers color
    highlight clear LineNr
    highlight clear SignColumn
    highlight LineNr  guifg=#444444
 
    "Fast Scrolling  
     set ttyfast

"------------------------------------------------------------------------------------
" MAPS
"------------------------------------------------------------------------------------

    "Leader Key
    let mapleader="\<space>"

    "Neovim Edit
    nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

    "Neovim reload
    nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

    "Fuzzy search Files
    nnoremap <c-p> :Files<cr>

    "Search ocurrencys
    nnoremap <c-f> :Ag<cr>

    "Tabs
    nnoremap <c-right> :tabnext<cr>
    nnoremap <c-left> :tabprevious<cr>

    "Tabs Split
    nnoremap <Leader>w <C-w>w

    "Substitute all
    nnoremap <leader>su :%s/new/old/g

    "Terminal
    nnoremap <leader>t :vsplit term://zsh<cr>A
        
    "Comment Code
    nmap <C-_>   <Plug>NERDCommenterToggle
    xmap <C-_>   <Plug>NERDCommenterToggle<CR>
    
    "Coc Autocomplete
    inoremap <silent><expr> <c-space> coc#refresh()
    nnoremap <leader>c :CocCommand<cr>
    "Move Lines
    nnoremap <S-Up> :m-2<CR>
    nnoremap <S-Down> :m+<CR>
    inoremap <S-Up> <Esc>:m-2<CR>
    inoremap <S-Down> <Esc>:m+<CR>

"------------------------------------------------------------------------------------
" SNIPS
"------------------------------------------------------------------------------------
    
    "Snippets Conf
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

"------------------------------------------------------------------------------------
" LANGS CONFIG
"------------------------------------------------------------------------------------

"-----------------------HTML---------------------------------------------------

    autocmd FileType html let b:coc_pairs_disabled = ['<']
    
    let g:closetag_filenames = '*.html,*.xhtml,*.phtl, *.vue'

    let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

    let g:closetag_filetypes = 'html,xhtml,phtml, vue'

    let g:closetag_xhtml_filetypes = 'xhtml,jsx'

    let g:closetag_emptyTags_caseSensitive = 1


"-----------------------VUE----------------------------------------------
    
    autocmd FileType vue let b:coc_pairs_disabled = ['<']
    let g:vim_vue_plugin_load_full_syntax = 1
    let g:vim_vue_plugin_highlight_vue_keyword= 1
    let g:vim_vue_plugin_use_stylus= 1
    let g:vim_vue_plugin_highlight_vue_attr = 1
    let g:vim_vue_plugin_use_scss= 1
    let g:vim_vue_plugin_use_sass= 1

"----------------------GOLANG------------------------------------------------

    " Run gofmt on save
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
    let g:go_fmt_command = "goimports"
    
    "Syntax Highlighting
    let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
    let g:go_highlight_array_whitespace_error = 1
    let g:go_highlight_chan_whitespace_error = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_space_tab_error = 1
    let g:go_highlight_trailing_whitespace_error = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_parameters = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_build_constraints = 1
    let g:go_highlight_generate_tags = 1
    let g:go_highlight_string_spellcheck = 1
    let g:go_highlight_format_strings = 1
    let g:go_highlight_variable_declarations = 1
    let g:go_highlight_variable_assignments = 1
    let g:go_highlight_diagnostic_errors = 1
    let g:go_highlight_diagnostic_warnings = 1
"------------------------------------------------------------------------------------
" FILES AND LINT
"------------------------------------------------------------------------------------

    "File
    nnoremap <C-l> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

    "Ale
    nnoremap <F9> :ALEFix<cr>
    
    " ESLint fix
    let g:ale_fixers = {}
    let g:ale_fixers.javascript = ['eslint']
    let g:ale_fixers.vue = ['eslint']
    let g:ale_fix_on_save = 1

    "autocmd BufEnter * lcd %:p:h
    if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif

"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------


