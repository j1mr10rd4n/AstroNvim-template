-- Override notification display defaults
return {
  "rcarriga/nvim-notify",
  opts = {
    top_down = false,
    timeout = 1000, -- shorter display duration, default 1000
    -- log messages level - default 5 (everything), 1 (minimum)
    level = 3,
    -- background_color = "#000000",
  },
}
