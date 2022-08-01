local Remap = require("dave.keymap")
local nnoremap = Remap.nnoremap

-- Telescope
--map("n", "ff", "<cmd>lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})<CR>")
nnoremap("fg", ":Telescope live_grep<CR>")