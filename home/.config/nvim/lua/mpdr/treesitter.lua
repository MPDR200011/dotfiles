require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "typescript", "javascript", "tsx" },
  highlight = {
    enable = true,
  },
  rainbow = {
      enable = true,
  },
}
