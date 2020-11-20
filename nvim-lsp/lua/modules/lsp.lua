
local completion = require("completion")
local nvim_lsp = require("lspconfig")

local function make_on_attach(config)
  return function(client)
    if config.before then
      config.before(client)
    end

    completion.on_attach(client)

    local opts = {silent = true, noremap = true}
    local mappings = {
      {"n", "gd", [[<Cmd>lua vim.lsp.buf.definition()<CR>]], opts},
      {"n", "gi", [[<Cmd>lua vim.lsp.buf.implementation()<CR>]], opts},
      {"n", "gr", [[<Cmd>lua vim.lsp.buf.references()<CR>]], opts},
      {"n", "gv", [[<Cmd>lua vim.lsp.buf.hover()<CR>]], opts},
      {"n", "<leader>lr", [[<Cmd>lua vim.lsp.buf.rename()<CR>]], opts},
      {"n", "[e", [[<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>]], opts},
      {"n", "]e", [[<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>]], opts},
    }

    for _, map in pairs(mappings) do
      vim.api.nvim_buf_set_keymap(0, unpack(map))
    end

    if config.after then
      config.after(client)
    end

  end
end

local servers = {gopls = {}, tsserver = {}, yamlls = {}, vimls = {}, }

-- lua special case
require("nlua.lsp.nvim").setup(nvim_lsp, {
  on_attach = make_on_attach({}),
  globals = {
    -- Colorbuddy
    "Color",
    "c",
    "Group",
    "g",
    "s",
    "RELOAD",
    "R",
    "P",
  },
})

for server, config in pairs(servers) do
  config = config or {}
  config.on_attach = make_on_attach(config)
  nvim_lsp[server].setup(config)
end
