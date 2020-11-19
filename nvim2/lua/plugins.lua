

-- This file can be loaded by calling `lua require('plug')` from your init.vim

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Simple plugins can be specified as strings
  use '9mm/vim-closer'

 --Gruvbox
   
    use 'npxbr/gruvbox.nvim'
 --Airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

 --Icons File Manager
    use 'ryanoasis/vim-devicons'


use 'neovim/nvim-lspconfig'
use 'nvim-lua/completion-nvim'
use 'nvim-lua/lsp_extensions.nvim'
use 'RishabhRD/popfix'
use 'RishabhRD/nvim-lsputils'
use 'rstacruz/vim-closer'


    
    use  'alvan/vim-closetag'
   
    use 'luochen1990/rainbow'
    
  
    use 'preservim/nerdcommenter'
1

    use 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


  -- Plugins can have dependencies on other plugins
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }


  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- You can specify multiple plugins in a single call
  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}


end)