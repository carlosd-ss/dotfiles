local packer_exists = pcall(vim.cmd, [[ packadd packer.nvim ]])
if not packer_exists then
  local dest = string.format("%s/site/pack/packer/opt/", vim.fn.stdpath("data"))
  local repo_url = "https://github.com/wbthomason/packer.nvim"

  vim.fn.mkdir(dest, "p")

  print("Downloading packer")
  vim.fn.system(string.format("git clone %s %s", repo_url, dest .. "packer.nvim"))
  vim.cmd("PackerSync")
  print("packer.nvim installed")
end

--########################################################
-- LOAD
--########################################################

return require("packer").startup(function(use)

--########################################################
-- COLORS
--########################################################

	use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("modules.treesitter").config()
    end,
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }

  use {
    "npxbr/gruvbox.nvim",
    requires = {"tjdevries/colorbuddy.vim"},
    config = function()
      vim.g.gruvbox_italicize_comments = true
      vim.g.gruvbox_improved_strings = true
    end,
  }
--########################################################
-- UTILS
--########################################################

  use {"wbthomason/packer.nvim", opt = true}
  use {"mhinz/vim-startify"}
  use {"nvim-lua/plenary.nvim"}

--########################################################
-- CODE EDIT
--########################################################

  use {"tpope/vim-commentary"}
  use {"sbdchd/neoformat"}

--########################################################
-- SEARCH FILES
--########################################################
  use {
    "nvim-lua/telescope.nvim",
    config = function()
      require("modules.search")
    end,
    requires = {"nvim-lua/popup.nvim"},
  }

--########################################################
-- LSP
--########################################################

  use {
    "neovim/nvim-lspconfig",
    config = function()
      require("modules.lsp")
      require("modules.snippets")
    end,
    requires = {
      "nvim-lua/completion-nvim",
      "norcalli/snippets.nvim",
      "euclidianAce/BetterLua.vim",
    },
  }
--########################################################
-- STATUSLINE AND TABS
--########################################################
 
	use {"kyazdani42/nvim-web-devicons"}
  use {
    "glepnir/galaxyline.nvim",
    config = function()
      require("modules.statusline")
    end,
    requires = {"npxbr/gruvbox.nvim"},
  }
  use {
    "akinsho/nvim-bufferline.lua",
    config = function()
      require("bufferline").setup()
    end,
  }

--########################################################
-- LANGS 
--########################################################
  
-- Go
  use {"fatih/vim-go", run = ":GoUpdateBinaries", ft = {"go"}}

  -- HTML/CSS
  use {
    "mattn/emmet-vim",
    ft = {"html", "css", "scss"},
    config = function()
      require("modules.html")
    end,
  }

end)
