-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable autoformat for glsl files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "glsl" },
  callback = function()
    vim.b.autoformat = false
  end,
})

local opt = vim.opt

-- Change tabs for web files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "vue",
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  callback = function()
    opt.expandtab = true
    opt.shiftwidth = 2
    opt.tabstop = 2
    opt.smartindent = true
  end,
})
