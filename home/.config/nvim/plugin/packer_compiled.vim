" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/mpdr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mpdr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mpdr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mpdr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mpdr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["cobalt2.vim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/cobalt2.vim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  dracula = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/dracula"
  },
  edge = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  firenvim = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  harpoon = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/harpoon"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/material.vim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-rdark"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/nvim-rdark"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["snippets.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight-vim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/tokyonight-vim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-deus"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-deus"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/mpdr/.local/share/nvim/site/pack/packer/start/zephyr-nvim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
