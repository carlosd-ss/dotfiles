"--------------------------------Plugins---------------------------------------------
call plug#begin()
"Theme Plug
Plug 'chriskempson/base16-vim'
"Terminal
Plug 'tc50cal/vim-terminal'
"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'
"Syntax  Highlighting
Plug 'sheerun/vim-polyglot'
"Files Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
"Syntax check
Plug 'dense-analysis/ale'
"Autoformat
Plug 'ruanyl/vim-fixmyjs'
"-----------Langs----------------------------------------------------------------------
"Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Vuejs
Plug 'posva/vim-vue'
"Dart
"PHP
Plug 'StanAngeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'
"Closetag Html
Plug 'alvan/vim-closetag'
call plug#end()
"----------Basic------------------------------------------------------------------------
"Char
set encoding=UTF-8
"---------------------------Theme-------------------------
" use real colors
set termguicolors
colorscheme base16-gruvbox-dark-medium
let base16colorspace=256
syntax on
filetype plugin indent on
highlight clear LineNr
highlight clear SignColumn
highlight LineNr  guifg=#444444
"-------------------------------------------------------------
"Work
set autochdir
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
"Autoformat
noremap <F3> :Fixmyjs<CR>
"au BufWrite * :Autoformat
"Filetype
filetype on
"Cursorline
set cursorline
"-----------------Leader and maps-------------------------
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
"Save
nnoremap <c-s> :w!<cr>
"Undo
nnoremap <c-z> u<cr>
"Substitute all
nnoremap <leader>su :%s/new/old/g
"Lines order
xnoremap <c-r> :sort<cr>
"--------------------------------Coc-nvim----------------------------------
"Tab confirm completion
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
"Reset tab ultinips
let g:UltiSnipsExpandTrigger = "<NUL>"
"--------------------------Snipets---------------------------------------
"Snippets Conf
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
"-----------------------Vue----------------------------------------------
let g:vue_disable_pre_processors = 1
"------------------------Terminal----------------------------------------
"Terminal
nnoremap <leader>t :vsplit term://zsh<cr>A
"------------------Golang------------------------------------------------
"Go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" Launch gopls when Go files are in use
let g:LanguageClient_serverCommands = {
			\ 'go': ['gopls']
			\ }
" Run gofmt on save
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
"Lint
"GoLang
nnoremap<leader>gr :GoRun<CR>
nnoremap<leader>gd :GoDebugStart<CR>
nnoremap<leader>gb :GoBuild<CR>
nnoremap<leader>gt :GoTest<CR>
"-------------NERDTre---------------------------------
"File
nnoremap <C-l> :NERDTreeToggle<CR>
"-------HTMl----------------------------------------------------------------
"
"filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'
" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1
" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
			\ 'typescript.tsx': 'jsxRegion,tsxRegion',
			\ 'javascript.jsx': 'jsxRegion',
			\ }
" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'
"-----------------Autoformat----------------------------------------------------
"Remove Blank Line
function! Formatonsave()
	:g/^$/d
endfunction
autocmd BufWritePre *.vim call Formatonsave()
if Formatonsave()
	Formatonsave()
endif
"FixEslint
let g:fixmyjs_engine = 'eslint'
"-------------------Cursor Last file--------------------------------------
"autocmd BufEnter * lcd %:p:h
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"------------cursors--------------------------------------------------------
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<C-q>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<C-q>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
