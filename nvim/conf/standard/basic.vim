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
" CURSOR LAST POSITION
"------------------------------------------------------------------------------------
 
    if has("autocmd")
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif

"------------------------------------------------------------------------------------
" SNIPS
"------------------------------------------------------------------------------------
    
    "Snippets Conf
    let g:UltiSnipsEditSplit="vertical"
