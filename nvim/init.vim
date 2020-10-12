                "_   _ _____ _____     _____ __  __ 
                "| \ | | ____/ _ \ \   / /_ _|  \/  |
                "|  \| |  _|| | | \ \ / / | || |\/| |
                "| |\  | |__| |_| |\ V /  | || |  | |
                "|_| \_|_____\___/  \_/  |___|_|  |_|


"--------------------------------Plugins---------------------------------------------

call plug#begin()

"------------------------------------------------------------------------------------
"THEME AND INTERFACE
"------------------------------------------------------------------------------------
    "Gruvbox
    Plug 'morhetz/gruvbox'
    
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
 
    "Closetag HTML
    Plug 'alvan/vim-closetag'
    
    "Color Pairs
    Plug 'luochen1990/rainbow'
    
    "Comment
    Plug 'preservim/nerdcommenter'
    
    "Markdown and HTML
    Plug 'shime/vim-livedown'  
    Plug 'turbio/bracey.vim'

"------------------------------------------------------------------------------------
" LANGUAGES PLUGS
"------------------------------------------------------------------------------------

    "Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    
    let g:coc_global_extensions = [
      \ 'coc-go',
      \ 'coc-sql',
      \ 'coc-docker',
      \ 'coc-json',
      \ 'coc-tabnine',
      \ 'coc-tsserver',
      \ 'coc-vetur',
      \ 'coc-css',
      \ 'coc-highlight',
      \ 'coc-styled-components',
      \ 'coc-eslint',
      \ 'coc-yaml',
      \ 'coc-sh',
      \ 'coc-pairs',
      \ 'coc-highlight',
      \ 'coc-fzf-preview'
      \ ]

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
    
    "Set vimgrep
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    set grepformat=%f:%l:%c:%m

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

    "File Buffer
    nnoremap <tab> :b#<cr>
    
    "Tabs
    nnoremap <c-right> :tabnext<cr>
    nnoremap <c-left> :tabprevious<cr>

    "Tabs Split
    nnoremap <Leader>w <C-w>w

    "Substitute all
    nnoremap <leader>su :%s/original_string/new_string/g
    nnoremap <leader>sp :grep original_string
    nnoremap <leader>sb :cfdo %s/original_string/new_string/g
    
    "NewFile
    nnoremap <leader>nf :tabnew %:h/filename

    "Comment Code
    nmap <C-_>   <Plug>NERDCommenterToggle
    xmap <C-_>   <Plug>NERDCommenterToggle<CR>
    imap <C-_>   <esc><Plug>NERDCommenterToggle<CR>i
    
    "Coc Autocomplete
    inoremap <silent><expr> <c-space> coc#refresh()
    
    "Move Lines
    nnoremap <S-Up> :m-2<CR>
    nnoremap <S-Down> :m+<CR>
    inoremap <S-Up> <Esc>:m-2<CR>
    inoremap <S-Down> <Esc>:m+<CR>
    
    "Markdown Preview and HTML
    nmap <leader>mp :LivedownPreview<cr>
    nmap <leader>ms :LivedownKill<cr>
    nmap <leader>lp :Bracey<cr>
    nmap <leader>ls :BraceyStop<cr>

"------------------------------------------------------------------------------------
" SNIPS
"------------------------------------------------------------------------------------
    
    "Snippets Conf
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

"------------------------------------------------------------------------------------
" LANGS CONFIG
"------------------------------------------------------------------------------------

"----------------------HTML,CSS,JS,TS,ELM,REACT,VUE---------------------------
 
    let g:closetag_filenames = '*.html,*.xhtml,*.phtl, *.vue'

    let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

    let g:closetag_filetypes = 'html,xhtml,phtml, vue'

    let g:closetag_xhtml_filetypes = 'xhtml,jsx'

    let g:closetag_emptyTags_caseSensitive = 1

"----------------------GOLANG------------------------------------------------

    "Imports Go on Save
    let g:go_fmt_command = "goimports"

    "Maps
    nnoremap <leader>jt :CocCommand go.tags.add<cr>
    nnoremap <leader>ct :CocCommand go.tags.clear<cr>
    nnoremap <leader>gt :CocCommand go.test.generate.file<cr>
    nnoremap <leader>gr :GoReferrers<cr>

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
" NERDTREE
"------------------------------------------------------------------------------------

    "File
    nnoremap <C-l> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

"------------------------------------------------------------------------------------
" CURSOR LAST POSITION
"------------------------------------------------------------------------------------
 
    "autocmd BufEnter * lcd %:p:h
    if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif

"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------
