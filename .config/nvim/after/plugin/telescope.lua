local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ef', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git File Search' })
vim.keymap.set('n', '<leader>es', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
