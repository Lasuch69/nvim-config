return {
  {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function(_, opts)
      opts.menu = {
        width = 70,
        height = 24,
      }
    end,
    keys = function()
      local keys = {
        { "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon open menu" },
        { "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon add file" },
      }

      for i = 1, 9, 1 do
        local command = string.format("<cmd>lua require('harpoon.ui').nav_file(%d)<cr>", i)
        table.insert(keys, { string.format("%d", i), command, desc = string.format("Harpoon go to file %d", i) })
      end

      return keys
    end,
  },
}
