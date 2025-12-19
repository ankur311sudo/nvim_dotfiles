return {
  {
    "anurag3301/nvim-platformio.lua",

    -- lazy-load only when these commands are used
    cmd = { "Pioinit", "Piorun", "Piocmdh", "Piocmdf", "Piolib", "Piomon", "Piodebug", "Piodb" },

    config = function()
      vim.g.pioConfig = {
        lsp = "clangd",
        clangd_source = "ccls",
        menu_key = "<leader>\\",
        debug = false,
      }

      local ok, pio = pcall(require, "platformio")
      if ok then
        pio.setup(vim.g.pioConfig)
      end
    end,

    dependencies = {
      "akinsho/toggleterm.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      "nvim-lua/plenary.nvim",
      "folke/which-key.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
