require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.cmp")
require("user.lsp")
require("user.telescope")
require("user.gitsigns")
require("user.treesitter")
require("user.autopairs")
require("user.comment")
require("user.nvim-tree")
require("user.lualine")
require("user.toggleterm")
require("user.project")
require("user.impatient")
-- require("user.indentline")
require("user.alpha")
require("user.whichkey")
require("user.autocommands")

-- LEYO CONFIG
require("leyo.move")
-- require("leyo.neoscroll")
-- require("leyo.nvim-colorizer")
-- require("leyo.tokyonight")
require("leyo.keymaps")
require("leyo.onedark")
-- require("leyo.cursorline")

-- colorscheme
require("user.colorscheme")
require("user.bufferline")

-- colorscheme
require("user.colorscheme")
require("user.bufferline")
require("leyo.devicons")

local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
  return
end
