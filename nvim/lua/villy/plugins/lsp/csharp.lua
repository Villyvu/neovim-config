return {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    "williamboman/mason.nvim", -- Required, automatically installs omnisharp
    "williamboman/mason-lspconfig.nvim", -- Ensure mason-lspconfig is included
    "neovim/nvim-lspconfig", -- Ensure nvim-lspconfig is included
    "mfussenegger/nvim-dap",
    "Tastyep/structlog.nvim", -- Optional, but highly recommended for debugging
  },
  config = function ()
      -- Ensure Mason is set up before csharp.nvim
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- Set up OmniSharp with nvim-lspconfig
      require("lspconfig").omnisharp.setup{}

      -- Set up csharp.nvim
      require("csharp").setup()
  end
}

