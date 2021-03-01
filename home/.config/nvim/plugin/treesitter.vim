" TreeSitter Settings
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "typescript", "javascript", "tsx" };
  indent = {
    enable = true,
  };
  highlight = {
    enable = true,
  };
}
EOF
