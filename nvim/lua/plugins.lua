-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap

if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("install packer ...")
  paccker_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1", -- "https://github.com/wbthomason/packer.nvim",
    "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim install complate") end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("not install packer.nvim")
  return
end


packer.startup({
  function(use)
    -- Packer 可以升级自己
    use("wbthomason/packer.nvim") 
    -- nvim-tree
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
    })

    -- theme ---
    use("folke/tokyonight.nvim")

    -- markdown --
    use {"ellisonleao/glow.nvim", branch = 'main'}

  end,

  config = {
    -- 最大并发数
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    -- display = {
    -- 使用浮动窗口显示
    --   open_fn = function()
    --     return require("packer.util").float({ border = "single" })
    --   end,
    -- },
  }

})

--
-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]
--
--return require('packer').startup(function()
--  -- Packer can manage itself
--  use 'wbthomason/packer.nvim'
--end)

