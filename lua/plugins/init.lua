return {
  { "catppuccin/nvim", name = "catppuccin"},
  { 'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies = { 'nvim-lua/plenary.nvim' } },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    }
  }
}
