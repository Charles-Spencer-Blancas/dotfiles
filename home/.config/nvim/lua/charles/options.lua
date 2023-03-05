vim.opt.clipboard="unnamedplus" 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth=2
vim.opt.smarttab = true
vim.opt.tabstop=2
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.lazyredraw = true
vim.opt.linebreak = true
vim.opt.encoding="utf-8"
vim.opt.scrolloff=5
vim.opt.sidescrolloff=5
vim.opt.laststatus=2
vim.opt.ruler = true
vim.opt.wildmenu = true
vim.opt.errorbells = false
vim.opt.mouse=a
vim.opt.backspace="indent,eol,start"
vim.opt.confirm = true
vim.opt.history=1000
vim.opt.completeopt=menuone,noinsert,noselect
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.hidden = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.signcolumn="yes:1"
vim.opt.cmdheight=1
vim.opt.updatetime=1000
vim.opt.swapfile = false
vim.opt.termguicolors = true

-- web-devicons
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}

-- Catppuccin Theme
vim.g.catppuccin_flavour = "latte"
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]

local ctp_feline = require('catppuccin.groups.integrations.feline')

-- Feline
require("feline").setup({
	components = ctp_feline.get(),
})

-- Indent Blankline
require("indent_blankline").setup()

-- nvim-tree
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
