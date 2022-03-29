
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Surrounding quickies.
  use 'tpope/vim-surround'

  -- Closes brackets for me.
  use 'jiangmiao/auto-pairs'

  -- Airline status bar.
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- LSP & Autocompletion.
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'ray-x/lsp_signature.nvim'

  -- Linting.
  use 'dense-analysis/ale'

  -- Git in vim.
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'

  -- Finder.
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

    -- Better terraform.
  use 'hashivim/vim-terraform'
  -- Better markdown syntax.
  use 'plasticboy/vim-markdown'
  -- Better i3 config/etc syntax highlighting.
  use 'mboughaba/i3config.vim'
  -- Better tsx support.
  use 'peitalin/vim-jsx-typescript'

  -- Nord colorscheme, but with some personal tweaks.
  use 'zkitero/nord-vim'

    -- Treesitter for better syntax highlighting.
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
