return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#121212",
        dark_bg    = "#121212",
        darker_bg  = "#0c0c0c",
        lighter_bg = "#1a1a1e",
        selection  = "#222228",

        fg         = "#dbd9d3",
        dark_fg    = "#b3adad",
        bright_fg  = "#eeece6",
        muted      = "#626a78",

        red        = "#e19e74",
        orange     = "#CC6528",
        yellow     = "#c9c6ad",
        green      = "#6D837E",
        cyan       = "#a4a4a4",
        blue       = "#77899a",
        purple     = "#9577B6",
        brown      = "#AC7339",

        bright_red    = "#C75E57",
        bright_yellow = "#e1d574",
        bright_green  = "#ace1af",
        bright_cyan   = "#7D8268",
        bright_blue   = "#5d8aa8",
        bright_purple = "#7286a8",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.lighter_bg }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.Visual = { bg = "#eb7841", fg = "#121212", bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = c.lighter_bg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
