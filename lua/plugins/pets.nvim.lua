return {
  "giusgad/pets.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
  config = function()
    require("pets").setup {
      -- Configuration here, or leave empty to use defaults
    }
  end,
}
