" TreeSitter Settings
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "typescript", "javascript" }; -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  };
}
EOF
