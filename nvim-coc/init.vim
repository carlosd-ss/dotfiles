
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
    "Syntax check
    Plug 'dense-analysis/ale'

    "Closetag HTML
    Plug 'alvan/vim-closetag'
    
    "Color Pairs
    Plug 'luochen1990/rainbow'
    
    "Comment
    Plug 'preservim/nerdcommenter'
    
    "Markdown and HTML
    Plug 'shime/vim-livedown'  
    
    "Ident"
    "Plug 'Yggdroot/indentLine' 

"------------------------------------------------------------------------------------
" LANGUAGES PLUGS
"------------------------------------------------------------------------------------

    "Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------

call plug#end()


source $HOME/.config/nvim/conf/themes/theme.vim
source $HOME/.config/nvim/conf/standard/basic.vim
source $HOME/.config/nvim/conf/keys/keybinds.vim
source $HOME/.config/nvim/conf/langs/golang.vim
source $HOME/.config/nvim/conf/langs/html.vim
source $HOME/.config/nvim/conf/autocomplete/coc.vim

