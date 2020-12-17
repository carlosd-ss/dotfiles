"------------------------------------------------------------------------------------
" ALE 
"------------------------------------------------------------------------------------

"Set Linter
let g:ale_lint_on_text_changed = 'always'
let g:ale_disable_lsp = 1
let g:ale_lint_file = 1

"Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

"------------------------------------------------------------------------------------
" GO 
"------------------------------------------------------------------------------------

let g:ale_linters = {'go': ['golangci-lint']}
let g:ale_go_golangci_lint_package = 1
