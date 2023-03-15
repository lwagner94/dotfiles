-- vim: sw=2 expandtab:

return {
  { "echasnovski/mini.nvim", 
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.pairs").setup({
        mappings = {
          ["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\&].", register = { cr = false } },
        }
      })

      require("mini.comment").setup()
      require("mini.surround").setup()
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" }
  }
}
