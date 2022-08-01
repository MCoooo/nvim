local Remap = require("dave.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>f", ":NeoTreeRevealToggle<CR>")
nnoremap("<leader>n", ":bn<CR>")
nnoremap("<leader>b", ":bp<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("Y", "yg$")
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

--
-- Save
nnoremap("??", ":w<CR>")
inoremap("??", "<C-o>:w<CR>")

-- Opens line below or above the current line
inoremap("<C-d>d", "<C-O>o")
inoremap("<C-u>u", "<C-O>O")



-- Easier Moving between splits
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")

-- Run previous command
nnoremap("<leader><leader>c", ":<up>")

-- Change the working directory for everybody
nnoremap("<leader>cd", ":windo lcd")


-- Make esc leave terminal mode
--[[
tnoremap("<leader><Esc>", "<C-\><C-n>")
tnoremap("<Esc><Esc>", "<C-\><C-n>")
--]]
-- Easy moving between the buffers
--[[
tnoremap("<A-h>", "<C-\><C-n><C-w>h")
tnoremap("<A-j>", "<C-\><C-n><C-w>j")
tnoremap("<A-k>", "<C-\><C-n><C-w>k")
tnoremap("<A-l>", "<C-\><C-n><C-w>l")
--]]
-- try and make sure to not mangle space items

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", "\"*y")
vnoremap("<leader>y", "\"*y")
nnoremap("<leader>Y", "\"*yg$")


nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

vnoremap("<leader>d", "\"_d")

-- This is going to get me cancelled
inoremap("<C-c>", "<Esc>")
inoremap(";;", "<Esc>")

nnoremap("Q", "<nop>")
nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

nnoremap("<C-k>", "<cmd>cnext<CR>zz")
nnoremap("<C-j>", "<cmd>cprev<CR>zz")
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
nnoremap("<leader>sc", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gcI<Left><Left><Left>")
