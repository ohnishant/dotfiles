vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ee", vim.cmd.Oil)
vim.keymap.set("n", "<leader>qq", vim.cmd.bd)

-- Saving files: These exist just in case I come back from using VSCode for a little longer than its required lol
vim.keymap.set("n", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

-- Ctrl D, Ctrl u movement centers the cursor simultaneously
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Searcing centers cursor simultaneously
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("i", "<C-d>", "<Esc><C-d>zz")
vim.keymap.set("i", "<C-u>", "<Esc><C-i>zz")

-- Move text around in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Change all occurrences remap
--not needed now with lsp smart rename
--vim.keymap.set("n", "<leader>ciw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Quick Fix List Navigation
vim.keymap.set("n", "<leader>cn", ":cnext<CR>")
vim.keymap.set("n", "<leader>cp", ":cprev<CR>")
