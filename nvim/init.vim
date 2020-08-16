"--------------------------------Plugins---------------------------------------------

call plug#begin()

"------------------------------------------------------------------------------------
"THEME AND INTERFACE
"------------------------------------------------------------------------------------

    "Gruvbox
    Plug 'chriskempson/base16-vim'

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
    
    "Comment
    Plug 'preservim/nerdcommenter'

"------------------------------------------------------------------------------------
" LANGUAGES PLUGS
"------------------------------------------------------------------------------------

    "Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    
"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------
call plug#end()

"------------------------------------------------------------------------------------
" COLORS
"------------------------------------------------------------------------------------

    " use real colors
    set termguicolors
     
    "Theme and BG
    colorscheme base16-gruvbox-dark-hard
    let base16colorspace=256
    set background=dark

"------------------------------------------------------------------------------------
" PREFERENCES
"------------------------------------------------------------------------------------

    "Char
    set encoding=UTF-8
    
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

"----------------------GOLANG------------------------------------------------

    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'
    " Launch gopls when Go files are in use
    let g:LanguageClient_serverCommands = {
                \ 'go': ['gopls']
                \ }
    " Run gofmt on save
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

"------------------------------------------------------------------------------------
" FILES AND LINT
"------------------------------------------------------------------------------------

    "File
    nnoremap <C-l> :NERDTreeToggle<CR>

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
