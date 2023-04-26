local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader><F5>", mark.add_file)
vim.keymap.set("n", "<leader><F6>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader><F1>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader><F2>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader><F3>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader><F4>", function() ui.nav_file(4) end)


