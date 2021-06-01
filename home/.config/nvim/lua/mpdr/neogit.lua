local neogit = require('neogit')
local utils = require('mpdr.utils')
local map = utils.map

neogit.setup {
    integrations = {
        diffview = true,
    },
}

map('n', '<leader>gs', ':Neogit<CR>')

local diffviewCb = require('diffview.config').diffview_callback
require('diffview').setup {
  diff_binaries = false,    -- Show diffs for binaries
  file_panel = {
    width = 35,
    use_icons = true        -- Requires nvim-web-devicons
  },
  key_bindings = {
    -- The `view` bindings are active in the diff buffers, only when the current
    -- tabpage is a Diffview.
    view = {
      ["<tab>"]     = diffviewCb("select_next_entry"),  -- Open the diff for the next file 
      ["<s-tab>"]   = diffviewCb("select_prev_entry"),  -- Open the diff for the previous file
      ["<leader>e"] = diffviewCb("focus_files"),        -- Bring focus to the files panel
      ["<leader>b"] = diffviewCb("toggle_files"),       -- Toggle the files panel.
    },
    file_panel = {
      ["j"]         = diffviewCb("next_entry"),         -- Bring the cursor to the next file entry
      ["<down>"]    = diffviewCb("next_entry"),
      ["k"]         = diffviewCb("prev_entry"),         -- Bring the cursor to the previous file entry.
      ["<up>"]      = diffviewCb("prev_entry"),
      ["<cr>"]      = diffviewCb("select_entry"),       -- Open the diff for the selected entry.
      ["o"]         = diffviewCb("select_entry"),
      ["R"]         = diffviewCb("refresh_files"),      -- Update stats and entries in the file list.
      ["<tab>"]     = diffviewCb("select_next_entry"),
      ["<s-tab>"]   = diffviewCb("select_prev_entry"),
      ["<leader>e"] = diffviewCb("focus_files"),
      ["<leader>b"] = diffviewCb("toggle_files"),
    }
  }
}
