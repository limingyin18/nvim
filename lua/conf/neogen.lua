require("neogen").setup {}

local opts = {noremap = true, silent = true}
-- 函数
vim.api.nvim_set_keymap("n", "<Leader>af", ":lua require('neogen').generate()<CR>", opts)
-- 类
vim.api.nvim_set_keymap("n", "<Leader>ac", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)

-- 文档
vim.api.nvim_set_keymap("n", "<Leader>ad", ":lua require('neogen').generate({ type = 'file' })<CR>", opts)
