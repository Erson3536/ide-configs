local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release	
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { 'phaazon/hop.nvim' },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'neovim/nvim-lspconfig' },
    {
        "williamboman/mason.nvim"
    },
    { "williamboman/mason-lspconfig.nvim" },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        -- config override for fix strange window borders after v0.10.0 NeoVim updated.
        -- From: https://www.reddit.com/r/neovim/comments/18faftd/comment/kcz6bub
        config = function()
            vim.cmd.colorscheme 'gruvbox'
            vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
        end,
        opts = ...,
    },
    {
        "aktersnurra/no-clown-fiesta.nvim",
        priority = 1000,
        config = config,
        lazy = false,
    },
    { 'hrsh7th/cmp-nvim-lsp' }, { 'hrsh7th/cmp-buffer' }, { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' }, { 'hrsh7th/nvim-cmp' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    { 'lewis6991/gitsigns.nvim' },
    { 'jiangmiao/auto-pairs' },
    { 'sindrets/diffview.nvim' },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
            "TmuxNavigatorProcessList",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    }
})
