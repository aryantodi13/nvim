local lua_ls_setup = {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            }, 
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    }
}
require("lspconfig").lua_ls.setup(lua_ls_setup)
--require("lspconfig").lua_ls.setup {}

function CleverTab()
    -- Get the current line up to the cursor position
    local line = vim.api.nvim_get_current_line()
    local col = vim.api.nvim_win_get_cursor(0)[2]
    local before_cursor = line:sub(1, col)

    -- Check if the text before the cursor is all whitespace
    if before_cursor:match('^%s*$') then
        return vim.api.nvim_replace_termcodes('<Tab>', true, false, true)
    else
        return vim.api.nvim_replace_termcodes('<C-n>', true, false, true)
    end
end
-- Set up the mapping in insert mode
vim.keymap.set('i', '<Tab>', function()
    return CleverTab()
end, { expr = true })
