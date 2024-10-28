require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })


-- cargo commands
--
map("n", "<Leader>cc", "<cmd>lua vim.cmd('Cargo check')<CR>", { desc = "Cargo check" })
map("n", "<Leader>cr", "<cmd>lua vim.cmd('Cargo run')<CR>", { desc = "Cargo run" })
-- python commands

-- Python commands
map("n", "<Leader>pr", "<cmd>vsplit | terminal python3 %<CR>", { desc = "Run Python file" })
map("n", "<Leader>pp", "<cmd>terminal python3 %<CR>", { desc = "Run Python in current buffer" })

--inlay hints
map("n", "<Leader><Leader>t", "<cmd>lua require('lsp-inlayhints').toggle()<CR>", { desc = "Toggle inlay hints" })
map("n", "<Leader><Leader>rt", "<cmd>lua require('lsp-inlayhints').reset()<CR>", { desc = "Reset inlay hints" })


-- git commands
map("n", "<Leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })
map("n", "<Leader>gb", "<cmd>lua require('gitsigns').blame_line()<CR>", { desc = "Git blame line" })
map("n", "<Leader>gd", "<cmd>lua require('gitsigns').diffthis()<CR>", { desc = "Git diff this" })
map("n", "<Leader>gp", "<cmd>lua require('gitsigns').preview_hunk()<CR>", { desc = "Git preview hunk" })
map("n", "<Leader>gs", "<cmd>lua require('gitsigns').stage_hunk()<CR>", { desc = "Git stage hunk" })
map("n", "<Leader>gr", "<cmd>lua require('gitsigns').reset_hunk()<CR>", { desc = "Git reset hunk" })
map("n", "<Leader>gu", "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", { desc = "Git undo stage hunk" })
map("n", "]c", "<cmd>lua require('gitsigns').next_hunk()<CR>", { desc = "Next git hunk" })
map("n", "[c", "<cmd>lua require('gitsigns').prev_hunk()<CR>", { desc = "Previous git hunk" })

-- optional git line blame toggle
map("n", "<Leader>gt", "<cmd>lua require('gitsigns').toggle_current_line_blame()<CR>", { desc = "Toggle git line blame" })
