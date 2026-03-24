return {
   "neovim/nvim-lspconfig",
   { "williamboman/mason.nvim" , opts = {}, },
   {
      "williamboman/mason-lspconfig.nvim",
      opts = {
	 ensure_installed = {
	    "pyright",
	    "rust_analyzer",
	    "lua_ls",
	    "cssls",
	    "ts_ls",
	    "clangd",
	    "qmlls"
	 },
      }
   }
}
