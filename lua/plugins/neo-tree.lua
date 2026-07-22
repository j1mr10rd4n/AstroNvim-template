-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main",
  version = "*",
  enabled = true,
  opts = function(_, opts)
    local astro = require "astrocore"
    opts = astro.extend_tbl(opts, {
      window = {
        width = 60,
        mappings = {
          ["T"] = "trash",
          ["U"] = "restore_from_trash", -- only works on files that are in the recycle bin
        },
      },
    })
    return opts
  end,
}
