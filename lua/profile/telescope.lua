
require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >",
        color_devicons = true,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        --[[ mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }, ]]
    },
    pickers = {
        live_grep = {
            additional_args = function(opts)
                return { "--hidden" }
            end
        },
        find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "--hidden" },
            -- find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
    },
    extensions = {
        --[[ project = {
            base_dirs = {
                {'$dev/src/Rust'},
                {'$dev/src/GOLang'},
            },
            hidden_files = true,
            theme = "dropdown"
        },
        bookmarks = {
            selected_browser = 'edge',
            url_open_plugin = 'vim_external',
        }, ]]
    },
})

--[[ require'telescope'.load_extension('project')
require'telescope'.load_extension('bookmarks')
 ]]
local M = {}

function M.reload_modules()
    -- Because TJ gave it to me.  Makes me happpy.  Put it next to his other
    -- awesome things.
    local lua_dirs = vim.fn.glob("./lua/*", 0, 1)
    for _, dir in ipairs(lua_dirs) do
        dir = string.gsub(dir, "./lua/", "")
        require("plenary.reload").reload_module(dir)
    end
end

M.search_devscripts = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Dev Scripts >",
        cwd = os.getenv("Dev"),
        hidden = true,
    })
end

return M
