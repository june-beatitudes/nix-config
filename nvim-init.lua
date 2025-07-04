vim.lsp.enable("clangd")
require("nvim-tree").setup()
vim.cmd("colorscheme onedark")
vim.cmd("NvimTreeOpen")

-- Barbar Keybinds
map("n", "<A-<Tab>>", "<Cmd>BufferNext<CR>", opts)
map("n", "<C-W>", "<Cmd>BufferClose<CR>", opts)
