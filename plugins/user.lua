return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -------------------------------
  { "AlexvZyl/nordic.nvim" },
  { "tomasiser/vim-code-dark" },
  { "rose-pine/neovim" },
  { "kdheepak/monochrome.nvim" },
  { "projekt0n/github-nvim-theme" },
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    opts = {
      -- options
    },
  },
  -- { "nikvdp/neomux" },
  -- { "catppuccin/nvim" },
  {
    "Thweki/fcitx.nvim",
    event = "VeryLazy",
    config = function() require("fcitx").enable_switch() end,
  },
  {
    "glacambre/firenvim",

    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
    lazy = not vim.g.started_by_firenvim,
    build = function() vim.fn["firenvim#install"](0) end,
  },
  -------------------------------
}
