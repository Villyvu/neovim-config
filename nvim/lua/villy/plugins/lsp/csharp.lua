-- return {
--   "iabdelkareem/csharp.nvim",
--   dependencies = {
--     "williamboman/mason.nvim", -- Required, automatically installs omnisharp
--     "williamboman/mason-lspconfig.nvim", -- Ensure mason-lspconfig is included
--     "neovim/nvim-lspconfig", -- Ensure nvim-lspconfig is included
--     "mfussenegger/nvim-dap",
--     "Tastyep/structlog.nvim", -- Optional, but highly recommended for debugging
--   },
--   config = function ()
--       -- Ensure Mason is set up before csharp.nvim
--       require("mason").setup()
--       require("mason-lspconfig").setup()
--
--       -- Set up OmniSharp with nvim-lspconfig
--       require("lspconfig").omnisharp.setup{}
--
--       -- Set up csharp.nvim
--       require("csharp").setup()
--   end
-- }

return {
    "seblj/roslyn.nvim",
    ft = "cs",
    opts = {
      config = {
        settings = {
            ["csharp|inlay_hints"] = {
                csharp_enable_inlay_hints_for_implicit_object_creation = true,
                csharp_enable_inlay_hints_for_implicit_variable_types = true,
                csharp_enable_inlay_hints_for_lambda_parameter_types = true,
                csharp_enable_inlay_hints_for_types = true,
                dotnet_enable_inlay_hints_for_indexer_parameters = true,
                dotnet_enable_inlay_hints_for_literal_parameters = true,
                dotnet_enable_inlay_hints_for_object_creation_parameters = true,
                dotnet_enable_inlay_hints_for_other_parameters = true,
                dotnet_enable_inlay_hints_for_parameters = true,
                dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
                dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
                dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
            },
            ["csharp|code_lens"] = {
                dotnet_enable_references_code_lens = true,
            },
        },
    },
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    }
}
