"Plugins
call plug#begin()
"Theme Plug
Plug 'morhetz/gruvbox'
"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
"Syntax  Highlighting
Plug 'sheerun/vim-polyglot'
"Files Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
"Check Code Lint
Plug 'dense-analysis/ale'
"Autocomplete pairs
Plug 'jiangmiao/auto-pairs'
"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"File Manager
Plug 'preservim/nerdtree'
"Icons File Manager
Plug 'ryanoasis/vim-devicons'
"Autocomplete Langs
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"-----------Languages Suport-------------------
Plug 'zchee/nvim-go', { 'do': 'make'}
call plug#end()
"Language
set encoding=UTF-8
"Theme
colorscheme gruvbox
set background=dark

"Change files without saving
set hidden

"See numbers on lines
set number

"See numbers relatives on line
set relativenumber

"Preview in real time
set inccommand=split

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
"Snippets Conf
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

