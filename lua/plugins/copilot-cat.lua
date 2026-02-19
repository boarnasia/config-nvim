return {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cond = vim.g.vscode ~= 1,
    opts = {
        auto_insert_mode = false,
        language = "Japanese",
    },
}
