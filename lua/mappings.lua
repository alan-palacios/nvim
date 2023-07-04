-- leader
vim.g.mapleader = ' '

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
      options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-S>", ":update<CR>", { silent = true })
map("v", "<C-S>", "<C-C>:update<CR>", { silent = true })
map("i", "<C-S>", "<C-O>:update<CR>", { silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
