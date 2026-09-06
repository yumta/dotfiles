return {
  -- messages, cmdline and the popupmenu
  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
    keys = {},
  },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")
      opts.sections.lualine_c[4] = {
        LazyVim.lualine.pretty_path({
          length = 0,
          relative = "cwd",
          modified_hl = "MatchParen",
          directory_hl = "",
          filename_hl = "Bold",
          modified_sign = "+",
          readonly_icon = " 󰌾 ",
        }),
      }
    end,
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  {
    "folke/snacks.nvim",

    opts = {
      image = {
        enabled = true, -- Enables the image viewer module
        -- define these here, so that we don't need to load the image module
        formats = {
          "png",
          "jpg",
          "jpeg",
          "gif",
          "bmp",
          "webp",
          "tiff",
          "heic",
          "avif",
          "mp4",
          "mov",
          "avi",
          "mkv",
          "webm",
          "pdf",
          "icns",
        },
      },
      dashboard = {
        preset = {
          header = [[
██╗  ██╗ █████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██████╗ ██╗
██║ ██╔╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██╔══██╗██║
█████╔╝ ███████║██╔████╔██║██║██╔██╗ ██║███████║██████╔╝██║
██╔═██╗ ██╔══██║██║╚██╔╝██║██║██║╚██╗██║██╔══██║██╔══██╗██║
██║  ██╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║██║  ██║██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝
   ]],
        },
      },
    },
  },
}
