return {
  -- "edluffy/specs.nvim",
  -- use cxwx fork because of https://github.com/edluffy/specs.nvim/issues/31
  "cxwx/specs.nvim",
  name = "specs-nvim",
  lazy = false,
  config = function()
    require("specs").setup {
      show_jumps = true,
      min_jump = 5,
      popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 10, -- time increments used for fade/resize effects
        blend = 50, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 25,
        winhl = "PMenu",
        fader = require("specs").pulse_fader,
        resizer = require("specs").shrink_resizer,
      },
      ignore_filetypes = {},
      ignore_buftypes = {
        nofile = true,
      },
    }
  end,
}
