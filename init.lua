require("config.lazy")
vim.cmd [[tnoremap <silent> <ESC> <C-\><C-n>]]
vim.cmd [[command! -nargs=* T split | wincmd j | resize 20 | terminal <args>]]

