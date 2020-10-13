"------------------------------------------------------------------------------------
" THEME AND BG
"------------------------------------------------------------------------------------
   
    colorscheme gruvbox
    set background=dark
    let g:gruvbox_contrast_dark='hard'

"------------------------------------------------------------------------------------
" AIRLINE
"------------------------------------------------------------------------------------
    
 
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail'
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'


"------------------------------------------------------------------------------------
" COLOR PAIRS
"------------------------------------------------------------------------------------
    
    let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
    let g:rainbow_conf = {
    \   'guifgs': ['#d65d0e','#cc241d','#458588', '#d79921','#98971a','#b16286', '#689d6a'],
    \}
