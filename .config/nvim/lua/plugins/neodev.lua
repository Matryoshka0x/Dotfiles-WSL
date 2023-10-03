return {
  "folke/neodev.nvim",
  opts = {
    library = {
      enable = true,
      runtime = true,
      types = true,
      plugins = true,
    },
    setup_jsonls = true,
    override = function(root_dir, options) end,
    lspconfig = true,
    pathStrict = true,
  },
}
