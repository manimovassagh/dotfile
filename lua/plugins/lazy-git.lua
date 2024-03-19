return {
    "kdheepak/lazygit.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    reporting = "off",
    startupPopupVersion = 1,
    config = function()
        cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    	}
        vim.keymap.set('n', '<leader>git', ':LazyGit<CR>', {})
    end
}
