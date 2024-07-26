-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

lvim.plugins = {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    module = "tailwindcss-colors",
    config = function()
      require("tailwindcss-colors").setup()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }
}

lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}


lvim.keys.normal_mode["<S-q>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<S-f>"] = "<cmd>lua vim.lsp.buf.format(nil,2000)<CR>"
vim.g.copilot_assume_mapped = true
