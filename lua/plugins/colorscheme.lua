return {
  --	"folke/tokyonight.nvim",
  --"catppuccin/nvim",
  --"bluz71/vim-nightfly-guicolors",
  --"LunarVim/darkplus.nvim"
  "EdenEast/nightfox.nvim",
  --"ellisonleao/gruvbox.nvim"
  --'navarasu/onedark.nvim'
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
      },
    })
    vim.cmd.colorscheme("nightfox")
  end,
  --[[
  })--]]
}
