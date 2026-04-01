-- Set up tabs and leader
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.mapleader = " "

-- vim tmux navigator binds
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Setup wrap for long lines
vim.opt.wrap = true
vim.opt.breakindent = true

-- Setup Copilot tab completion to shift-tab
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })

-- Setup Copilot-Chat keybinds
vim.keymap.set('n', '<leader>c', ':CopilotChatToggle<CR>')
