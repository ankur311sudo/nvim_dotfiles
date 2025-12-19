return {
  "saghen/blink.cmp",
  opts = {
    -- Use LuaSnip as snippet engine
    snippets = {
      preset = "luasnip",
    },

    -- Enable snippet source
    sources = {
      default = { "lsp", "buffer", "path", "snippets" },
    },

    -- Completion settings
    completion = {
      accept = {
        auto_brackets = { enabled = true },
      },
    },

    -- Keymaps for snippets & completion
    keymap = {
      preset = "default",

      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
