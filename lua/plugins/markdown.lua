local md = { markdown = true, ["markdown.mdx"] = true }

-- 文章を書くときは自動で割り込む補完・括弧補完・Copilot がかえって邪魔になる
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "markdown.mdx" },
    callback = function(ev)
        vim.b[ev.buf].minipairs_disable = true
        -- copilot-native の setup が後から global で enable するため schedule で上書きする
        vim.schedule(function()
            if vim.api.nvim_buf_is_valid(ev.buf) and vim.lsp.inline_completion then
                vim.lsp.inline_completion.enable(false, { bufnr = ev.buf })
            end
        end)
    end,
})

return {
    {
        "saghen/blink.cmp",
        opts = {
            completion = {
                menu = {
                    -- markdown では <C-Space> で呼んだときだけ出す
                    auto_show = function()
                        return not md[vim.bo.filetype]
                    end,
                },
            },
            sources = {
                per_filetype = {
                    markdown = { "path", "buffer" },
                },
            },
        },
    },
}
