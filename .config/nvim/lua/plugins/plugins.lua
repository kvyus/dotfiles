local function transparency()
   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
   {
      "windwp/nvim-autopairs",
      config = true
   },

   {
      "AlexvZyl/nordic.nvim",
      priority = 1000,
      config = function()
	 vim.cmd("colorscheme nordic")
	 transparency()
      end
   },

   {
      "catgoose/nvim-colorizer.lua",
      event = "BufReadPre",
      opts = {},
   }
}
