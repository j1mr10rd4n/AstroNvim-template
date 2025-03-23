-- `fd` alternative to the `ESC` key
return {
  "max397574/better-escape.nvim",
  opts = {
    timeout = vim.o.timeoutlen,
    default_mappings = true,
    mappings = {
      i = { f = { d = "<Esc>" } },
      c = { f = { d = "<Esc>" } },
      t = { f = { d = "<Esc>" } },
      v = { f = { d = "<Esc>" } },
      s = { f = { d = "<Esc>" } },
    },
  },
}
