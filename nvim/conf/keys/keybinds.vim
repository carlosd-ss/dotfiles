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




"------------------------------------------------------------------------------------
" NERDTREE
"------------------------------------------------------------------------------------

    "File
    nnoremap <C-l> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1

