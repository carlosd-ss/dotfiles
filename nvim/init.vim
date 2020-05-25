"Plugins
call plug#begin()
"Theme Plug
Plug 'morhetz/gruvbox'
"Terminal
Plug 'tc50cal/vim-terminal'
"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
"Syntax  Highlighting
Plug 'sheerun/vim-polyglot'
"Files Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Check Code Lint
Plug 'dense-analysis/ale'
"Autocomplete pairs
Plug 'jiangmiao/auto-pairs'
"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"NerdTree
Plug 'preservim/nerdtree'
"Icons File Manager
Plug 'ryanoasis/vim-devicons'
"Autocomplete Langs
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"-----------Languages Suport-------------------
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'posva/vim-vue'
Plug 'turbio/bracey.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

call plug#end()
"Language
set encoding=UTF-8
"Theme
let g:airline_theme='base16'
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
"Basic
set ruler
set backspace=indent,eol,start
set history=2000
set noswapfile
set autowrite
set visualbell
set spelllang=en
filetype on
set cursorline

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
"Vue
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
let g:vue_pre_processors = ['pug', 'scss', 'stylus']

"Go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

"Terminal
nnoremap <leader>t :TerminalSplit zsh<cr>

"GoLang
nnoremap<leader>gr :GoRun<CR>
nnoremap<leader>gd :GoDebugStart<CR>
nnoremap<leader>gb :GoBuild<CR>

"File
map <C-n> :NERDTreeToggle<CR>
"Flutter
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

let g:flutter_command="flutter"
let g:flutter_command=1
let g:flutter_hot_restart_on_save=0
let g:flutter_show_log_on_run=1

