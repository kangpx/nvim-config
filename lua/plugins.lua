return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorschemes
    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'rebelot/kanagawa.nvim'

    -- which-key
    use "folke/which-key.nvim" 

    -- nvim-tree
    use {
	    'nvim-tree/nvim-tree.lua',
	    tag = 'nightly', -- optional, updated every week. (see issue #1193)
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- barbar
    use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'} 

    -- mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'             -- completion
    use 'hrsh7th/cmp-nvim-lsp'         -- lsp source for nvim-cmp
    use 'L3MON4D3/LuaSnip'             -- snippets
    use 'saadparwaiz1/cmp_luasnip'     -- snippets source for nvim-cmp
    use 'rafamadriz/friendly-snippets' -- vscode-like snippets
    use 'ray-x/lsp_signature.nvim'     -- show function signature when you type
    use 'folke/trouble.nvim'           -- a list showing diagnostics, etc.

    -- debugger adaptor (DAP)
    use 'mfussenegger/nvim-dap'        

    -- DAP-python
    use 'mfussenegger/nvim-dap-python'

    -- DAP-User Interface
    use {"rcarriga/nvim-dap-ui", requires={"mfussenegger/nvim-dap"}}

    -- nvim-linter
    use 'mfussenegger/nvim-lint'

    -- comment
    use 'numToStr/Comment.nvim'

    -- autopairs
    use 'windwp/nvim-autopairs'

    -- lualine.nvim
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- toggleterm
    use 'akinsho/toggleterm.nvim'

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- nvim-ts-rainbow
    use 'mrjones2014/nvim-ts-rainbow'

    -- nvim-tmux-navigation
    use 'alexghergh/nvim-tmux-navigation'

    -- markdown-preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- telescope
    -- use {
    --     'nvim-telescope/telescope.nvim', 
    --     tag = '0.1.1', 
    --     requires = {
    --         'nvim-lua/plenary.nvim',
    --         'nvim-telescope/telescope-project.nvim',
    --         'nvim-telescope/telescope-live-grep-args.nvim'
    --     }
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- alpha-nvim
    use {'goolord/alpha-nvim', requires = { 'nvim-tree/nvim-web-devicons' },}

    -- indent_blankline
    use 'lukas-reineke/indent-blankline.nvim'    

    -- inc-rename
    use 'smjonas/inc-rename.nvim'

    -- leap.nvim
    use 'ggandor/leap.nvim'

    -- nvim-colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- surround
    use {'kylechui/nvim-surround', tag='*'}

    --tranparent
    -- use 'xiyaowong/nvim-transparent'

    -- cursorline 
    use 'yamatsum/nvim-cursorline'

    -- nvim-scrollbar
    use 'petertriho/nvim-scrollbar'

    -- yanky
    use 'gbprod/yanky.nvim'

    -- -- nvim-ufo
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    -- nvim-comment-frame
    use {'s1n7ax/nvim-comment-frame', requires = {'nvim-treesitter'}}

    -- goto-preview
    use 'rmagatti/goto-preview'

    -- vimtex
    use 'lervag/vimtex'

    -- cinnamon
    use 'declancm/cinnamon.nvim'

    --autosave
    use 'Pocco81/auto-save.nvim'

    -- todo-comments
    use {'folke/todo-comments.nvim', requires='nvim-lua/plenary.nvim'}

    -- hlargs (seems to have conflicts with align)
    -- use {'m-demare/hlargs.nvim', requires={'nvim-treesitter/nvim-treesitter'}}

    -- align
    use 'Vonr/align.nvim'

    -- copilot
    -- use 'github/copilot.vim'
    use {"zbirenbaum/copilot.lua",
        config = function()
            require('copilot').setup({
                suggestion = {enabled=false},
                panel = {enabled=false},
            })
            end
    }
    -- copilot-cmp
    use {"zbirenbaum/copilot-cmp",
         config = function()
            require('copilot_cmp').setup()
        end
    }
end)

