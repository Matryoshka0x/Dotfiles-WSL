return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "typescript-language-server",
      "tailwindcss-language-server",
      "css-lsp",
      "lua-language-server",
      "pyright",
      "gopls",
      "rust-analyzer",
    },
    automatic_installation = true,
    ui = {
      border = "double",
      icons = {
        package_installed = "﫟",
        package_pending = "﫠",
        package_uninstalled = "",
      },
    },
  },
}
