return {{
    'romgrk/barbar.nvim',
    dependencies = {'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    },
    init = function()
        vim.keymap.set('n', '<C-z>', ':<Cmd>BufferPrevious<CR><CR>', {silent = true})
        vim.keymap.set('n', '<C-x>', ':<Cmd>BufferClose<CR><CR>', {silent = true})
    end,
}}
