require('profile.customterm')
require('profile.customtermv')

vim.g.mapleader =" "
vim.keymap.set("n", "<leader>e", ":NeoTreeFocusToggle<CR>")

--left sided command
vim.keymap.set("n", "<leader>cc", ":")

-- move lines vertically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<DOWN>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<UP>", ":m '<-2<CR>gv=gv")

-- maximize windows
vim.keymap.set("n", "<leader>mm", ":WindowsMaximize<CR>")
vim.keymap.set("n", "<leader>ss", ":WindowsEqualize<CR>")

vim.keymap.set("n", "J", "mzJ`z")

--keep focus in centre
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- switch pwd to current file globally
vim.keymap.set("n", "<leader>cd", ":lcd %:p:h<CR>")


-- toggle terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>:bd!<CR>")
vim.keymap.set("t", "<S-Esc>", "<C-\\><C-n><CR>")
vim.keymap.set("n", "<leader>tt", ToggleTerminal)
vim.keymap.set("t", "<leader>tt", ToggleTerminal)
vim.keymap.set("t", "<leader>tw", "<C-\\><C-n><C-w><C-w>")


vim.keymap.set("n", "<leader>vv", ToggleTerminalV)
vim.keymap.set("t", "<leader>vv", ToggleTerminalV)

--resize windows
vim.keymap.set("n", "<leader><Up>", ":resize -2<CR>")
vim.keymap.set("n", "<leader><Down>", ":resize +2<CR>")
vim.keymap.set("n", "<leader><Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<leader><Right>", ":vertical resize +2<CR>")

vim.keymap.set("n", "<leader>nn", ":e C:\\Users\\a124129\\AppData\\Local\\nvim<CR>")

-- paste yanked over selection, havent quite figured this out
vim.keymap.set("x", "<leader>p", "\"_dP")


-- yank into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete into registry, will not be pasted from p
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", ";;", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- quick fix not sure what this does
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--search and replace
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- save update
vim.keymap.set("i", "<C-s><C-s>", "<Esc>:update<CR>gi")
vim.keymap.set("n", "<C-s><C-s>", ":update<CR>")

-- switch buffers
vim.keymap.set("n", "<leader>n", ":bnext<CR>")
vim.keymap.set("n", "<leader>b", ":bprevious<CR>")

