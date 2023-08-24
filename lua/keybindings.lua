-- 设置leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

--按jk从insert或visual回到normal
map("i", "jk", "<esc>", opt)
map("v", "jk", "<esc>", opt)

-- --normal模式下ctrl+u / ctrl+d 上下移动10行
map("n", "<C-u>", "10k", opt)
map("n", "<C-d>", "10j", opt)

-- normal和visual模式下缩进代码
map("n", "<Tab>", "v>g<Esc>", opt)
map("n", "<S-Tab>", "v<g<Esc>", opt)
map("v", "<Tab>", ">gv", opt)
map("v", "<S-Tab>", "<gv", opt)

--分屏移动
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- ctrl + backspace 删除词
map('i', '<C-backspace>', '<C-W>', opt)

-- 分割窗口
map('n', '<leader>sv', '<C-w>v', opt) -- 水平新增窗口
map('n', '<leader>sh', '<C-w>s', opt) -- 垂直新增窗口
map('n', '<leader>sc', '<C-w>c', opt) -- 关闭当前窗口

-- 取消高亮
map('n', '<leader>nl', ':nohl<CR>', opt)

-- H/L跳转到行首/行尾
map('n', 'H', '^', opt)
map('n', 'L', '$', opt)
map('v', 'H', '^', opt)
map('v', 'L', '$', opt)

-- shift-j/k 移动行
map('v', "J", ":m '>+1<CR>gv=gv", opt)
map('v', "K", ":m '<-2<CR>gv=gv", opt)

--插件快捷键
-- Telescope
map("n", "<leader>f", ":Telescope find_files<CR>", opt)
map("n", "<leader>g", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", opt)
map("n", "<leader>p", ":lua require('telescope').extensions.project.project{}<CR>", opt)
map("n", "<leader>y", ":lua require('telescope').extensions.yank_history.yank_history()<CR>", opt)

-- nvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)

-- barbar
map("n", "<C-h>", ":BufferPrevious<CR>", opt)
map("n", "<C-l>", ":BufferNext<CR>", opt)
map("n", "<C-c>", ":BufferClose<CR>", opt)
map("n", "<C-A-h>", ":BufferMovePrevious<CR>", opt)
map("n", "<C-A-l>", ":BufferMoveNext<CR>", opt)

-- debugger adapter (dap)
map('n', '<leader>b', ":lua require('dap').toggle_breakpoint()<CR>", opt)
map('n', '<F5>', ":lua require('dap').continue()<CR>", opt)
map('n', '<F10>', ":lua require('dap').step_over()<CR>", opt)
map('n', '<F11>', ":lua require('dap').step_into()<CR>", opt)
map('n', '<F12>', ":lua require('dap').step_out()<CR>", opt)

-- inc-rename
map('n', '<leader>rn', ':IncRename ', opt)

-- trouble
map('n', '<leader>xx', '<cmd>TroubleToggle<CR>', opt)
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<CR>', opt)
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', opt)
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', opt)

-- yanky
vim.keymap.set({"n","x"}, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({"n","x"}, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({"n","x"}, "y", "<Plug>(YankyYank)")

-- ufo
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

--align
vim.keymap.set('x', '<leader>aa', function() require'align'.align_to_char(1, true)             end, opt)
vim.keymap.set('x', '<leader>as', function() require'align'.align_to_char(2, true, true)       end, opt)
vim.keymap.set('x', '<leader>aw', function() require'align'.align_to_string(false, true, true) end, opt)

--copilot
-- set keybindings for copilot, which set shift+tab to accept the suggestion
-- vim.keymap.set('i', '<leader>aa', function() require'align'.align_to_char(1, true)             end, opt)
-- imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
-- let g:copilot_no_tab_map = v:true
map('i', '<C-y>', 'copilot#Accept("<CR>")', {silent = true, expr = true})


-- pluginKeys = {}

-- 代码注释插件
-- pluginKeys.comment = {
  -- normal 模式
-- toggler = {
-- },
  -- visual 模式
-- opleader = {
    -- ctrl + /
  -- line = '<C-_>',
  -- block = 'bc',
-- },
-- }

-- lsp 快捷键设置
-- ./lua/lsp/language_servers.lua
-- pluginKeys.lsp_on_attach = function(client, buffer)
--     local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--     local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--     --- Mappings.
--     local opts = { noremap=true, silent=true }
--     buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--     buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--     buf_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--     buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--     buf_set_keymap('n', 'ge' , '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--     buf_set_keymap('n', 'gpe', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--     buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
--     buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- end
--
-- return pluginKeys
--
vim.api.nvim_create_autocmd("LspAttach",{
    callback = function(args)
        vim.keymap.set('n', 'gh', function()
            local winid = require('ufo').peekFoldedLinesUnderCursor()
            if not winid then
                vim.lsp.buf.hover()
            end
        end,
        {buffer=args.buf})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=args.buf})
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {buffer=args.buf})
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer=args.buf})
    end,
})

-- map('n', 'gpd', '<cmd>lua require("goto-preview").goto_preview_definition()<CR>', opt)
-- map('n', 'gpi', '<cmd>lua require("goto-preview").goto_preview_implementation()<CR>', opt)
-- map('n', 'gpr', '<cmd>lua require("goto-preview").goto_preview_references()<CR>', opt)
-- map('n', 'gP', '<cmd>lua require("goto-preview").close_all_win()<CR>', opt)


