-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
