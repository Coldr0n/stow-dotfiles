vim.keymap.set({ "n", "v" }, ".", ":", { desc = "Switch : with ." })
vim.keymap.set({ "n", "v" }, ":", ".", { desc = "Switch . with :" })

vim.keymap.set("n", "<leader>,", "m`A;<Esc>``", { desc = "Add a semicolon at the end of the line" })

vim.keymap.set("n", "<leader>xd", vim.diagnostic.open_float, { desc = "See line diagnostic" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll ud and center cursor" })

vim.keymap.set("n", "G", "Gzz", { desc = "Go to end of file and center cursor" })

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without replacing current register" })

-- bepo remaps
vim.keymap.set("n", "ê", "<C-w>")
vim.keymap.set("n", "Ê", "<C-w><C-w>")

-- window focus movement
vim.keymap.set("n", "êc", "<C-w>h")
vim.keymap.set("n", "êt", "<C-w>j")
vim.keymap.set("n", "ês", "<C-w>k")
vim.keymap.set("n", "êr", "<C-w>l")

vim.keymap.set("t", "êc", [[<Cmd>wincmd h<CR>]])
vim.keymap.set("t", "êt", [[<Cmd>wincmd j<CR>]])
vim.keymap.set("t", "ês", [[<Cmd>wincmd k<CR>]])
vim.keymap.set("t", "êr", [[<Cmd>wincmd l<CR>]])

-- window positioning
vim.keymap.set("n", "êC", "<C-w>H", { desc = "Move window left" })
vim.keymap.set("n", "êT", "<C-w>J", { desc = "Move window right" })
vim.keymap.set("n", "êS", "<C-w>K", { desc = "Move window up" })
vim.keymap.set("n", "êR", "<C-w>L", { desc = "Move window down" })

-- window split
vim.keymap.set("n", "êh", "<C-w>s", { desc = "Horizontal window split" })
vim.keymap.set("n", "êw", "<C-w>t")
vim.keymap.set("n", "êW", "<C-w>T")

-- tab remap
vim.keymap.set("n", "<leader>b", "gT", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>w", "gt", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>B", "tabfirst<CR>", { desc = "Go to first tab", silent = true })
vim.keymap.set("n", "<leader>W", "tablast<CR>", { desc = "Go to last tab", silent = true })

-- tab management
vim.keymap.set("n", "<leader>te", ":tabnew<CR>", { desc = "Open new tab", silent = true })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close tab", silent = true })
vim.keymap.set("n", "<leader>tb", ":tabmove -<CR>", { desc = "Move tab left", silent = true })
vim.keymap.set("n", "<leader>tw", ":tabmove +<CR>", { desc = "Move tab right", silent = true })

-- buffer remaps
vim.keymap.set("n", "gb", ":bprevious<CR>", { desc = "Switch to previous buffer", silent = true })
vim.keymap.set("n", "gw", ":bnext<CR>", { desc = "Switch to next buffer", silent = true })
vim.keymap.set("n", "gB", ":bfirst<CR>", { desc = "Switch to first buffer", silent = true })
vim.keymap.set("n", "gW", ":blast<CR>", { desc = "Switch to last buffer", silent = true })

-- spelling remap
vim.keymap.set("n", "<leader>ss", "z=", { desc = "Suggestion for spelling"})
vim.keymap.set("n", "<leader>S", "1z=", { desc = "Take first suggestion for spelling"})

vim.keymap.set("n", "<leader>sg", "zg", { desc = "Add word as a good word" })
vim.keymap.set("n", "<leader>sG", "zG", { desc = "Add word as an internal good word" })
vim.keymap.set("n", "<leader>sw", "zw", { desc = "Add word as a wrong word" })
vim.keymap.set("n", "<leader>sW", "zW", { desc = "Add word as an internal wrong word" })

-- undoes spelling remap
vim.keymap.set("n", "<leader>sug", "zug", { desc = "Undo word as a good word" })
vim.keymap.set("n", "<leader>suG", "zuG", { desc = "Undo word as an internal good word" })
vim.keymap.set("n", "<leader>suw", "zuw", { desc = "Undo word as a wrong word" })
vim.keymap.set("n", "<leader>suW", "zuW", { desc = "Undo word as an internal wrong word" })
