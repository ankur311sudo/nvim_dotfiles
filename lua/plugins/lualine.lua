return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      -- Helper: show full mode name only when width allows
      local function hide_in_width()
        return vim.fn.winwidth(0) > 80
      end

      -- Custom mode component with Vim logo
      local mode = {
        "mode",
        fmt = function(str)
          if hide_in_width() then
            return " " .. str
          else
            return " " .. str:sub(1, 1)
          end
        end,
      }

      return {
        options = {
          theme = "auto",
          section_separators = { left = "", right = "" },
          component_separators = { left = "|", right = "|" },
          globalstatus = true,
        },
        sections = {
          lualine_a = { mode }, -- 👈 here we use your custom component
          lualine_b = { "branch", "diff" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }
    end,
  },
}
