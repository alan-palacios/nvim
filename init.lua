require('mappings')

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
