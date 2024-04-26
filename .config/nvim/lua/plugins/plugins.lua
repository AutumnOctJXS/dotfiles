return{
    {
        -- lualine.nvim ステータスライン
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        -- NeoVim起動時にロード
        event = 'VimEnter',
        config = true,
    },
    {
        -- nvim-tree ディレクトリツリー
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            -- Ctrl+Nで切り替え・ロード
            {'<C-n>', '<Cmd>NvimTreeToggle<CR>', mode = 'n', noremap = true, silent = true},
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
            -- Leader+ffで起動・ロード
            {'<Leader>ff', '<Cmd>Telescope find_files<CR>', mode = 'n', noremap = true, silent = true,},
        },
        config = true,
    },
    {
        -- lexima.vim 括弧補完
        'cohama/lexima.vim',
        -- NeoVim起動時にロード
        event = 'VimEnter',
    },
    {
        -- vimtex TeX編集補助
        'lervag/vimtex',
        -- NeoVim起動時にロード
        event = 'VimEnter',
    },
    {
        --copilot.lua GitHub Copilot補完
        'zbirenbaum/copilot.lua',
        -- :Copilotでロード
        cmd = 'Copilot',
        -- インサートモード時にロード
        event = 'InsertEnter',
        config = true,
    },
}
