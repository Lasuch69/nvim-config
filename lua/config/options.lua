-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- GLSL parsing
vim.cmd([[autocmd BufRead,BufNewFile *.vert setfiletype glsl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tesc setfiletype glsl]])
vim.cmd([[autocmd BufRead,BufNewFile *.tese setfiletype glsl]])
vim.cmd([[autocmd BufRead,BufNewFile *.frag setfiletype glsl]])
vim.cmd([[autocmd BufRead,BufNewFile *.geom setfiletype glsl]])
vim.cmd([[autocmd BufRead,BufNewFile *.comp setfiletype glsl]])
