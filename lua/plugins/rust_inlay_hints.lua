return {
  "mrcjkb/rustaceanvim",
  version = "^5",
  ft = { "rust" },
  opts = {
    server = {
      on_attach = function(client, bufnr)
        vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
      end,
      default_settings = {
        ["rust-analyzer"] = {
          inlayHints = {
            bindingModeHints = { enable = true },
            chainingHints = { enable = true },
            closingBraceHints = { enable = true },
            lifetimeElisionHints = { enable = "always" },
            parameterHints = { enable = true },
            typeHints = { enable = true },
          },
          checkOnSave = true,
          procMacro = { enable = true },
        },
      },
    },
  },
}
