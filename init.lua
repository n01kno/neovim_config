vim.g.mapleader = ' '
vim.g.localmapleader = ' '
require 'dvx'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require "lazy".setup("plugins", {
  install = {
    missing = true,
    colorscheme = { 'catppuccin', 'rose-pine' },
  },
  checker = {

    enabled = true,
    notify = false,
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
})
