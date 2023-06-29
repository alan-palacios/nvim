require('mappings')
require('plugins')

opt = vim.opt

opt.number = true
opt.mouse = 'a'

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- indent
opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.autoindent = true
opt.smartindent = true

-- wrap
opt.wrap = true
opt.breakindent = true

-- Plugins
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

require("lazy").setup("plugins")