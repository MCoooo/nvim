local Remap = require("dave.keymap")
local nnoremap = Remap.nnoremap

-- Telescope
nnoremap("ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
--map("n", "ff", "<cmd>lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})<CR>")
nnoremap("fg", ":Telescope live_grep<CR>")
nnoremap("fb", ":Telescope buffers<CR>")
nnoremap("fd", ":Telescope diagnostics<CR>")
nnoremap("fp", ":Telescope project<CR>")
nnoremap("fbb", ":Telescope bookmarks<CR>")
nnoremap("<leader>fs", function()
	require('dave.telescope').search_devscripts({ hidden = true })
    end)
