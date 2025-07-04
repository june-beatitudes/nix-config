vim.lsp.enable("clangd")
require("nvim-tree").setup()
vim.cmd("colorscheme onedark")
vim.cmd("NvimTreeOpen")

-- Barbar Keybinds
vim.keymap.set("n", "<A-<Tab>>", "<Cmd>BufferNext<CR>", opts)
vim.keymap.set("n", "<C-W>", "<Cmd>BufferClose<CR>", opts)
