-- vim.opt.termguicolors = true

-- function SetColor(color)
-- color = color or "onedark"
-- vim.cmd.colorscheme(color)

-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
-- vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
-- vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
-- end

-- SetColor('kanagawa-wave')

-- setup must be called before loading the colorscheme

-- Default options:
-- Commented because in plugins.lua gruvbox.nvim already config and
-- can not call vim.cmd("colorscheme gruvbox") twice 
--[[
req
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "",  -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

vim.o.background = "dark" -- or "light" for light mode
--]]
