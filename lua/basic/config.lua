vim.cmd([[colorscheme catppuccin]])

-- 自动切换输入法（Fcitx 框架）
vim.g.FcitxToggleInput = function()
    local input_status = tonumber(vim.fn.system("fcitx5-remote"))
    if input_status == 2 then
        vim.fn.system("fcitx5-remote -c")
    end
end

vim.cmd("autocmd InsertLeave * call FcitxToggleInput()")
