-- bindings

local function invert_hl ()
    vim.opt.hlsearch = not vim.opt.hlsearch._value
end


local function launch_file_tree()
    vim.cmd('20Lexplore')
end

-- Normal mode
vim.keymap.set('n', '<leader>l', '<c-w>l')
vim.keymap.set('n', '<leader>h', '<c-w>h')
vim.keymap.set('n', '<leader>j', '<c-w>j')
vim.keymap.set('n', '<leader>k', '<c-w>k')
vim.keymap.set('n', '<leader>sv', ':source $MYVIMRC<cr>')
vim.keymap.set('n', '<leader>ev', ':edit $MYVIMRC<cr>')
vim.keymap.set('n', '<leader>n', invert_hl)
vim.keymap.set('n', '<leader>.', ':bnext<cr>')
vim.keymap.set('n', '<leader>,', ':bprevious<cr>')
vim.keymap.set('n', '<leader>f', launch_file_tree)

-- Insert mode
vim.keymap.set('i', 'jk', '<esc>')

-- Terminal mode
vim.keymap.set('t', '<c-\\>', '<c-\\><c-n>')

-- Autocorrect
vim.cmd('inoreabbrev paht path')
vim.cmd('inoreabbrev taht that')
vim.cmd('inoreabbrev classificaton classification')
vim.cmd('inoreabbrev compnents components')
vim.cmd('inoreabbrev compnent component')
vim.cmd('inoreabbrev pythone python')
vim.cmd('inoreabbrev smaples samples')
vim.cmd('inoreabbrev sover solver')
vim.cmd('inoreabbrev souce source')

-- Autocmds
local common_group = vim.api.nvim_create_augroup('common', {clear = true})
local spec_group = vim.api.nvim_create_augroup('lang_spec', {clear = true})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "python", "make", "sh", "cmake" },
    callback = function(args)
        vim.keymap.set('v', '<leader>#', ':normal 0i#<esc>', { buffer = args.buf })
    end,
    group = 'lang_spec',
    desc = "comment multiple lines for python source file"
})


vim.api.nvim_create_autocmd("FileType", {
    pattern = { 'c', 'cpp' },
    callback = function(args)
        vim.keymap.set('v', '<leader>//', ':normal 0i//<esc>', { buffer = args.buf })
    end,
    group = 'lang_spec',
    desc = 'comment multiple lines for c/c++'
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { 'c', 'cpp' },
    callback = function(args)
        vim.keymap.set('v', '<leader>/*', '<esc>`<i/*<esc>`>i*/<esc>', { buffer = args.buf })
    end,
    group = 'lang_spec',
    desc = 'comment multiple lines for c/c++'
})

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function() vim.highlight.on_yank({ timeout = 1000 }) end,
    group = 'common',
    desc = "briefly highlight yanked text"
})

vim.api.nvim_command([[autocmd TermOpen * setlocal nonu]])
vim.api.nvim_command([[autocmd TermOpen * setlocal nornu]])
