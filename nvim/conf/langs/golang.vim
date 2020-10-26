
"------------------------------------------------------------------------------------
" GO
"------------------------------------------------------------------------------------

    "Imports Go on Save
    let g:go_fmt_command = "goimports"
    let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }
    "Maps
    nnoremap <leader>jt :CocCommand go.tags.add<cr>
    nnoremap <leader>ct :CocCommand go.tags.clear<cr>
    nnoremap <leader>gt :CocCommand go.test.generate.file<cr>
    nnoremap <leader>gr :GoReferrers<cr>

    "Syntax Highlighting
    let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
    let g:go_highlight_array_whitespace_error = 1
    let g:go_highlight_chan_whitespace_error = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_space_tab_error = 1
    let g:go_highlight_trailing_whitespace_error = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_function_parameters = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_build_constraints = 1
    let g:go_highlight_generate_tags = 1
    let g:go_highlight_string_spellcheck = 1
    let g:go_highlight_format_strings = 1
    let g:go_highlight_variable_declarations = 1
    let g:go_highlight_variable_assignments = 1
    let g:go_highlight_diagnostic_errors = 1
    let g:go_highlight_diagnostic_warnings = 1



