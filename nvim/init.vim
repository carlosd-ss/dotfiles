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


	"Multiple Cursors
	Plug 'terryma/vim-multiple-cursors'

	"Syntax check
	Plug 'dense-analysis/ale'


"------------------------------------------------------------------------------------
" LANGUAGES PLUGS
"------------------------------------------------------------------------------------

	"Golang
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	
	"JS
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
	
	"PHP
	Plug '2072/PHP-Indenting-for-VIm'
	Plug 'StanAngeloff/php.vim'

"------------------------------------------------------------------------------------
" FRAMEWORKS PLUGS
"------------------------------------------------------------------------------------

	"Vue
	Plug 'posva/vim-vue'
	
	"Laravel
	Plug 'tpope/vim-projectionist'        
	Plug 'noahfrederick/vim-composer'     
	Plug 'noahfrederick/vim-laravel'
	
"------------------------------------------------------------------------------------
" 
"------------------------------------------------------------------------------------

call plug#end()


"------------------------------------------------------------------------------------
" COLORS
"------------------------------------------------------------------------------------

	" use real colors
	set termguicolors

	colorscheme base16-gruvbox-dark-medium
	let base16colorspace=256
	
	syntax on
	filetype plugin indent on
	
	highlight clear LineNr
	highlight clear SignColumn
	highlight LineNr  guifg=#444444


"------------------------------------------------------------------------------------
" PREFERENCES
"------------------------------------------------------------------------------------
	"Char
	set encoding=UTF-8
	
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
	
	"Filetype
	filetype on
	
	"Cursorline
	set cursorline


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

	"Save
	nnoremap <c-s> :w!<cr>

	"Undo
	nnoremap <c-z> u<cr>

	"Substitute all
	nnoremap <leader>su :%s/new/old/g

	"Lines order
	xnoremap <c-r> :sort<cr>

	"Terminal
	nnoremap <leader>t :vsplit term://zsh<cr>A




"------------------------------------------------------------------------------------
" SNIPS
"------------------------------------------------------------------------------------
	"Snippets Conf
	let g:UltiSnipsEditSplit="vertical"
	let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'


"------------------------------------------------------------------------------------
" LANGS CONFIG
"------------------------------------------------------------------------------------

"-----------------------JS----------------------------------------------
	autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
	autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"-----------------------VUE----------------------------------------------
	
	let g:vue_disable_pre_processors = 1

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

