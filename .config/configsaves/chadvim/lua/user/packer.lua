require('packer').startup( function(use)
	use 'wbthomason/packer.nvim'  -- leave this line otherwise packer will delete itself
	-- use "williamboman/mason.nvim"
	use 'navarasu/onedark.nvim'
	use {
        "kylechui/nvim-surround",
	    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    	    config = function()
            require("nvim-surround").setup({
            	-- Configuration here, or leave empty to use defaults
            })
            end
	}
	use {
		'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        require("lualine").setup()
	}
	use 'mg979/vim-visual-multi'
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.2',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
    	'numToStr/Comment.nvim',
    	config = function()
    		require('Comment').setup()
    	end
	}


    use ('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
    -- use "nvim-treesitter/playground"
    use ('theprimeagen/harpoon')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
}


end)





-- Color Theme: Onedark
require('onedark').load()

-- Mason:
require("mason").setup()
