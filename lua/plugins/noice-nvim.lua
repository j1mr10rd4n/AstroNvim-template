-- Override notification display defaults
return {
  {
    "noice.nvim",
    opts = function(_, opts)
      local utils = require "astrocore"
      return utils.extend_tbl(opts, {
        presets = {
          lsp_doc_border = true, -- add a border to hover docs and signature help
        },
      })
    end,
  },
  "rcarriga/nvim-notify",
  opts = {
    top_down = false,
    timeout = 1000, -- shorter display duration, default 1000
    -- log messages level - default 5 (everything), 1 (minimum)
    level = 3,
    -- background_color = "#000000",
  },
}
