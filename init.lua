require("config.lazy")
vim.api.nvim_create_user_command("T", function(opts)
  vim.cmd("split")
  vim.cmd("wincmd j")
  local total_lines = vim.o.lines
  vim.cmd("resize " .. tostring(total_lines - 20))
  vim.cmd("terminal " .. table.concat(opts.fargs, " "))
end, { nargs = "*" })

