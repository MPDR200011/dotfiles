-- Shamelessly stolen from Chris Kipp
-- https://github.com/ckipp01/dots/blob/629debe5c2b319765052e1797b197288d4d6ba63/nvim/.config/nvim/init.lua#L1-L19
local M = {}

M.opt = function (scope, key, value)
  local scopes = {o = vim.o, b = vim.bo, w = vim.wo}
  scopes[scope][key] = value
  if scope ~= 'o' then
    scopes['o'][key] = value
  end
end

M.map = function (mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
