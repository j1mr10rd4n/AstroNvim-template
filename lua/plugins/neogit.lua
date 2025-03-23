---@type LazySpec
return {
  -- overrides: add diffview and key mappings
  "NeogitOrg/neogit",
  dependencies = {
    { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" },
  },
  opts = {
    disable_commit_confirmation = true,
    -- disable_builtin_notifications = false,
    use_magit_keybindings = true,
    disable_signs = true, -- duplicate signs if enabled
    graph_style = "unicode", -- elegant commit graph
    integrations = {
      diffview = true,
    },
  },
  keys = {
    -- Neogit status - overrides stage hunk astronvim mapping
    { "<Leader>gs", "<cmd>Neogit<cr>", desc = "Status (Neogit)" },
  },
}
