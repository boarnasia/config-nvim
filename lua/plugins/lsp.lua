return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                phpactor = {
                    enabled = true,
                    on_attach = function(client, bufnr)
                        local caps = client.server_capabilities
                        -- 補完や診断は Intelephense に任せるので、Phpactor側は無効化
                        caps.completionProvider = false
                        caps.definitionProvider = false
                        caps.diagnosticProvider = false
                        caps.documentHighlightProvider = false
                        caps.documentSymbolProvider = false
                        caps.hoverProvider = false
                        caps.referencesProvider = false
                        caps.signatureHelpProvider = false
                        caps.workspaceSymbolProvider = false
                        -- リネームとコードアクションは有効のままにする
                        caps.renameProvider = true
                        caps.codeActionProvider = true
                    end,
                },
                intelephense = {
                    enabled = true,
                    on_attach = function(client, bufnr)
                        local caps = client.server_capabilities
                        -- リネームとコードアクションは無効にする
                        caps.renameProvider = false
                    end,
                },
            },
        },
    },
}
