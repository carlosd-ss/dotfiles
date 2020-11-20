local snp_utils = require("snippets.utils")

-- golang snippets
local function go_snippets()
  return {
    errn = snp_utils.match_indentation [[
if err != nil {
    ${0}
}
]],
    fp = "fmt.Println(\"${0}\")",
    fpf = "fmt.Printf(\"${0}\", \"${1:i}\")",
  }
end





local snp = require("snippets")
snp.use_suggested_mappings()

vim.g.completion_enable_snippet = "snippets.nvim"
vim.g.completion_matching_strategy_list = {"exact", "substring", "fuzzy"}
vim.g.completion_trigger_keyword_length = 2

-- snippets list
snp.snippets = {
 
  go = go_snippets(),
}
