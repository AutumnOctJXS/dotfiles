-- 行番号表示
vim.o.number = true
--ファイル名表示
vim.o.title = true
-- スマートインデント
vim.o.smartindent = true
-- 括弧の対応表示
vim.o.showmatch = true
-- タブをスペースに変換
vim.o.expandtab = true
-- タブ幅(行頭)
vim.o.shiftwidth = 4
-- タブ幅(行頭以外)
vim.o.tabstop = 4
-- バッファ内文字コード
vim.o.encoding = 'utf-8'
-- 書込文字コード
vim.o.fileencoding = 'utf-8'
-- スペースの割り当てを解除
vim.keymap.set('n', '<Space>', '<Nop>')
-- リーダをスペースに設定
vim.g.mapleader = '<Space>'
-- ローカルリーダをカンマに設定
vim.g.maplocalleader = ','
-- jjでエスケープ
vim.keymap.set('i', 'jj', '<Esc>', {noremap = true, silent = true})
-- 表示行単位移動
vim.keymap.set('n', 'j', 'gj', {noremap = true})
vim.keymap.set('n', 'k', 'gk', {noremap = true})
-- lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup('plugins', {
    defaults = {
        lazy = true,
    }
})
