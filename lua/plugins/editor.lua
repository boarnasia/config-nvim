return {
    {
        "boarnasia/zenhan.vim",
        cond = function()
            return vim.fn.has("win32") == 1 or vim.fn.has("wsl") == 1 or vim.g.vscode
        end,
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        cond = vim.g.vscode ~= 1,
    },
}
