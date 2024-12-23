vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>wq", vim.cmd.wq)
vim.keymap.set("n", "<leader>w<CR>", vim.cmd.w)

-- Set window controls
--vim.keymap.set("n", "<leader>wl", "<C-w>l")
--vim.keymap.set("n", "<leader>wh", "<C-w>h")
--vim.keymap.set("n", "<leader>wj", "<C-w>j")
--vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wr", "<C-w>r")
vim.keymap.set("n", "<leader>wR", "<C-w>R")

-- Visual mode moving
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeping cursor in place while appending line below to current line
-- Cursor stability
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy into clipboard with Y (uppercase)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>P", "\"+p")
--vim.keymap.set("n", "<leader>p1", vim.cmd { cmd = "cd", args = { '%:p:h<CR>'} })
--
--Set keymap for checkbox (custom) CheckPoint
vim.keymap.set("n", "<leader>cp", "mz_lrx`z")
vim.keymap.set("n", "<leader>c ", "mz_lr `z")
vim.keymap.set("n", "<leader>co", "mz_lrO`z")
vim.keymap.set("n", "<leader>c-", "mz_lr-`z")

-- Paste using Ctrl-V in insert mode
vim.keymap.set("i", "<C-v>", "<Esc>p")
--vim.keymap.set("n", "<leader>p2", vim.cmd.echo("\"HIHII\""))

--Vim keymap to format columns 
vim.keymap.set("v", "<leader>tf", ":'<,'>!column -t -s '|' -o '|'<CR>")
--vim keymap to send selected text to file (Send To)
--vim.keymap.set("v", "<leader>st", ":'<,'>w >> " . input("File: "))
vim.keymap.set("v", "<leader>st", function()
    local file = vim.fn.input("");
    return ":'<,'>w >> " .. file .. "<CR>"
end, { expr = true } )
