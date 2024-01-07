local builtin = require('telescope.builtin')
local opts = { hidden =true }
vim.keymap.set('n', '<leader>fp', builtin.find_files, {})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set('n', '<leader>,',function()
  require("telescope.builtin").oldfiles(require("telescope.themes").get_ivy({
    bwinblend = 5,
		previewer = false,
  }))
end, { desc = "FILE: Recent files" })

vim.keymap.set('n', '<leader>.',function()
  require("telescope.builtin").buffers(require("telescope.themes").get_ivy({
    bwinblend = 5,
		previewer = false,
  }))
end, { desc = "FILE: open buffers" })

vim.keymap.set('n', '<leader>fd',function()
  require("telescope.builtin").find_files(require("telescope.themes").get_ivy({
    bwinblend = 5,
		previewer = false,
  }))
end, { desc = "FILE: Native fzf" })

vim.api.nvim_create_user_command('NvimConfig', function()
    vim.api.nvim_command(":cd $localappdata/nvim")
    vim.api.nvim_command(":Telescope file_browser")
end, { desc = "View nvim configs"})

vim.keymap.set(
  "n", "<space>fP", ":NvimConfig<CR>",
  { desc = "FILE: nvim configs", noremap = true }
)


vim.keymap.set(
  "n",
  "<space>ff",
  ":Telescope file_browser<CR>",
  { desc = "FILE: browser", noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { desc = "FILE: browser (current buffer cwd)", noremap = true }
)


require("telescope").setup({
    defaults = {
        vimgrep_arguments = {
              "rg",
              "--color=never",
              "--no-heading",
              "--with-filename",
              "--line-number",
              "--column",
              "--smart-case",
              "--trim",
              "--hidden"
        }
    },
    pickers = {
        find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            -- find_command = { "--hidden" },
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
    },
    extensions = {
        file_browser = {
            depth = 3,
            hidden = {file_browser = false, folder_browser = false};
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                  -- your custom insert mode mappings
                },
                ["n"] = {
                  -- your custom normal mode mappings
                },
            },
        },
    },
})

require("telescope").load_extension "file_browser"
