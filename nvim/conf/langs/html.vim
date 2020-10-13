
"------------------------------------------------------------------------------------
" HTML
"------------------------------------------------------------------------------------
 
    autocmd FileType html let b:coc_pairs_disabled = ['<']
    autocmd FileType vue let b:coc_pairs_disabled = ['<']

    let g:closetag_filenames = '*.html,*.xhtml,*.phtl, *.vue'

    let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

    let g:closetag_filetypes = 'html,xhtml,phtml, vue'

    let g:closetag_xhtml_filetypes = 'xhtml,jsx'

    let g:closetag_emptyTags_caseSensitive = 1
