-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
        guifont = "CaskaydiaCove Nerd Font:h13", -- neovide font family & size
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        VM_leader = "gm", -- Visual Multi Leader (multiple cursurs - user plugin)
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        -- ["<esc>"] = false,

        -- Toggle last open buffer
        ["<leader><tab>"] = { "<cmd>b#<cr>", desc = "Last tab" },

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        ["<leader>b"] = { name = "Buffers" },
        ["<leader>bt"] = { name = "Tabs" },
        ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>btn"] = { "<cmd>tabNext<cr>", desc = "Next tab" },
        ["<leader>bt<tab>"] = { "<cmd>tabprevious<cr>", desc = "Previous tab" },
        -- ["<leader>bD"] = { "<cmd>Bdelete<cr>", desc = "Delete buffer" },

        -- Save prompting for file name
        ["<leader>W"] = { ":write ", desc = "Save as file" },

        -- Find Menu
        -- browse via directory structure, create and modify paths
        ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "Explorer" },

        -- Projects
        ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Projects" },

        -- Editing
        ["zZ"] = { "<cmd>ZenMode<cr>", desc = " Zen mode" },

        -- Git Menu
        -- Menu mappings
        ["<leader>gh"] = false, -- disable Reset Git Hunk mapping, used for Octo in plugins/github.lua
        ["<leader>gH"] = { function() require("gitsigns").stage_hunk() end, desc = "Stage Git hunk" },
        ["<leader>gn"] = { name = " Neogit" }, -- Neogit menu with alternate logo
      },
      t = {
        -- terminal? mode key bindings
      },
      v = {
        -- visual mode key bindings
      },
    },
  },
}
