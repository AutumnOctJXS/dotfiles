return{
    {
        -- lualine.nvim ステータスライン
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = true,
    },
    {
        -- nvim-tree ディレクトリツリー
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            -- Ctrl+Nで切り替え
            {'<C-n>', '<CMD>NvimTreeToggle<CR>', mode = 'n', noremap = true, silent = true},
        },
        config = true,
    },
    {
        -- telescope.nvim ファイルファインダ
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        keys = {
            -- Space+FFで起動
            {'<SPACE>ff', '<CMD>Telescope find_files<CR>', mode = 'n', noremap = true, silent = true,},
        },
        config = true,
    },
    {
        -- lexima.vim 括弧補完
        'cohama/lexima.vim',
    },
}
