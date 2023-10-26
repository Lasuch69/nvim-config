return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        glsl_analyzer = {},
        gopls = {},
        gdscript = {},
      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
      setup = {
        glsl_analyzer = function(_, opts)
          require("lspconfig").glsl_analyzer.setup({ server = opts })
        end,
        gopls = function(_, opts)
          require("lspconfig").gopls.setup({
            server = opts,
            settings = {
              gopls = {
                gofumpt = true,
              },
            },
          })
        end,
        gdscript = function(_, opts)
          require("lspconfig").gdscript.setup({ server = opts })
        end,
      },
    },
  },
}
