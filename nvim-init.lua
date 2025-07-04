vim.lsp.enable("clangd")
require("nvim-tree").setup()
vim.cmd("colorscheme onedark")
vim.cmd("NvimTreeOpen")

-- Barbar Keybinds
vim.keymap.set("n", "<C-A>", "<Cmd>BufferPrev<CR>", opts)
vim.keymap.set("n", "<C-D>", "<Cmd>BufferNext<CR>", opts)
vim.keymap.set("n", "<C-X>", "<Cmd>BufferClose<CR>", opts)
