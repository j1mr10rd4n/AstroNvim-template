-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.color.ccc-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.pack.clojure" },
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
}
