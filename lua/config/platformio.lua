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
