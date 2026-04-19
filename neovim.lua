return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,
      colors = {
        bg = "#121212",
        bg_dark = "#121212",
        bg_highlight = "#2a2e37",
        fg = "#dbd9d3",
        fg_dark = "#a4a4a4",
        comment = "#595c68",
        red = "#e19e74",
        orange = "#984b1e",
        yellow = "#c9c6ad",
        green = "#a5a297",
        cyan = "#e1d574",
        blue = "#605d5b",
        purple = "#8a8575",
        magenta = "#677a9d",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.bg_highlight }
        hl.Visual = { bg = "#eb7841", bold = true }      
        hl.LazySelection = { bg = "#8673a1", bold = true }
    
        hl.LspReferenceText  = { bg = c.bg_highlight, underline = true }
        hl.LspReferenceRead  = { bg = c.bg_highlight, underline = true }
        hl.LspReferenceWrite = { bg = c.bg_highlight, underline = true, bold = true }

        -- SYNTAX
        hl["@boolean"] = { fg = c.orange }
        hl["@constant"] = { fg = c.orange }
        hl["@constant.builtin"] = { fg = c.orange }
        hl["@keyword.function"] = { fg = c.magenta, bold = true }
        hl["@module"] = { fg = c.purple }
        hl["@property"] = { fg = c.fg_dark }
        hl["@type.builtin"] = { fg = c.blue }
        hl["@variable.member"] = { fg = c.fg_dark }

        -- UI ELEMENTS
        hl.WinSeparator = { fg = c.comment }
        hl.VertSplit = { fg = c.comment }
        hl.NeoTreeWinSeparator = { fg = c.comment }
        hl.NeoTreeVertSplit = { fg = c.comment }
        hl.NvimTreeVertSplit = { fg = c.comment }

        -- LSP SEMANTICS
        hl["@lsp.type.class"] = { fg = c.yellow }
        hl["@lsp.type.parameter"] = { fg = c.cyan, italic = true }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      require("aether.hotreload").setup()
      vim.cmd.colorscheme("aether")
    end,
  },
}