return {
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
    config = function()
      vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

      local state = {
        buf = nil,
        win = nil,
      }

      local function open_float()
        local width = math.floor(vim.o.columns * 0.8)
        local height = math.floor(vim.o.lines * 0.8)
        local col = math.floor((vim.o.columns - width) / 2)
        local row = math.floor((vim.o.lines - height) / 2)

        -- Create terminal buffer only once
        if not state.buf or not vim.api.nvim_buf_is_valid(state.buf) then
          state.buf = vim.api.nvim_create_buf(false, true)
          vim.bo[state.buf].bufhidden = "hide"
        end

        -- Create the window
        state.win = vim.api.nvim_open_win(state.buf, true, {
          relative = "editor",
          width = width,
          height = height,
          col = col,
          row = row,
          border = "rounded",
          style = "minimal",
        })

        -- Start terminal ONLY once
        if vim.bo[state.buf].buftype ~= "terminal" then
          vim.cmd("terminal")
        end
      end

      local function toggle()
        if state.win and vim.api.nvim_win_is_valid(state.win) then
          vim.api.nvim_win_hide(state.win)
        else
          open_float()
        end
      end

      vim.api.nvim_create_user_command("Floaterminal", toggle, {})
    end,
  },
}
