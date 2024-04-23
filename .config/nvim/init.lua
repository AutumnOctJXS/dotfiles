--行番号表示
vim.opt.number = true
--ファイル名表示
vim.opt.title = true
--スマートインデント
vim.opt.smartindent = true
--括弧の対応表示
vim.opt.showmatch = true
--タブをスペースに変換
vim.opt.expandtab = true
--タブ幅(行頭)
vim.opt.shiftwidth = 4
--タブ幅(行頭以外)
vim.opt.tabstop = 4
--バッファ内文字コード
vim.opt.encoding = 'utf-8'
--書込文字コード
vim.opt.fileencoding = 'utf-8'
--jjでエスケープ
vim.keymap.set('i', 'jj', '<ESC>', {noremap = true, silent = true})
--表示行単位移動
vim.keymap.set('n', 'j', 'gj', {noremap = true})
vim.keymap.set('n', 'k', 'gk', {noremap = true})
--lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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
require("lazy").setup("plugins")
