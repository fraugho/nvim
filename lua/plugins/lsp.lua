return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "zls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {},
      },
    },
  },
}
