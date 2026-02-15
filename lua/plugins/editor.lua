return {
    {
        "boarnasia/zenhan.vim",
        cond = function()
            return vim.fn.has("win32") == 1 or vim.fn.has("wsl") == 1
        end,
        opts = {},
    },
}
