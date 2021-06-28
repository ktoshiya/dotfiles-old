if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ff <cmd>Telescope find_files<cr>
nnoremap <silent> fg <cmd>Telescope live_grep<cr>
nnoremap <silent> fb <cmd>Telescope buffers<cr>
nnoremap <silent> fh <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
  }
}
EOF

