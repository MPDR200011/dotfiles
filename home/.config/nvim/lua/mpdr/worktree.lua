local utils = require('mpdr.utils')
local map = utils.map

require("telescope").load_extension("git_worktree")

map('n', '<leader>fw', '<Cmd>lua require(\'telescope\').extensions.git_worktree.git_worktrees()<CR>')
