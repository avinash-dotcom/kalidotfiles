-- Color Scheme
-- Make background transparent
vim.cmd("autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE")
vim.cmd("colorscheme dracula")
vim.api.nvim_set_option('termguicolors', true)
