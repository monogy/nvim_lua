local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.cmd('let mapleader=" "')

--map('', '', '', {})

--
-- 插入新行
-- map('n', '<leader><CR>', 'i<CR><ESC>i', {})


-- New cursor movement (the default arrow keys are used for resizing windows)
--     ^
--     i
-- < j   l >
--     k
--     v
--
-- 插入
map('', 'h', 'i', {})
map('', 'H', 'I', {})

map('', 'i', 'k', {})
map('', 'j', 'h', {})
map('', 'k', 'j', {})
map('', 'l', 'l', {})
map('', 'I', '5k', {})
map('', 'J', '5h', {})
map('', 'K', '5j', {})
map('', 'L', '5l', {})
map('', '<C-i>', '5<C-y>', {})
map('', '<C-k>', '5<C-e>', {})

map('', '<leader>i', '<C-w>k', {})
map('', '<leader>k', '<C-w>j', {})
map('', '<leader>j', '<C-w>h', {})
map('', '<leader>l', '<C-w>l', {})

map('', '<A-up>', ':res +5<CR>', {})
map('', '<A-down>', ':res -5<CR>', {})
map('', '<A-left>', ':vertical resize-5<CR>', {})
map('', '<A-right>', ':vertical resize+5<CR>', {})


-- 光标跳转至行首
map('', 'E', '^', {})
-- 光标跳转至行尾
map('', 'B', '$', {})

-- 取消高亮
-- map('', '<leader>/', ':noh<CR>')



-- 缩进管理
map('n', '<', '<<', {})
map('n', '>', '>>', {})

map('n', ';', ':', {})

-- Shortcut for quiting and saving
map('', 'Q', ':q!<cr>', {})
map('', '<C-s>', ':w<cr>', {})
map('', 'zz', ':wq<cr>', {})


-- About buffers
-- map('n', ',,', ':vsp<cr>', {})
-- map('n', '<leader>[]', ':tabedit<cr>', {})
--map('n', 'H', '<c-w>h', {})
--map('n', 'I', '<c-w>l', {})

-- Quickly edit the configuration
-- map('n', '<leader>fs', ':tabedit ~/.config/nvim/lua/plugins.lua<cr>', {})

-- Copy and Past from the system clipboard
map('v', 'Y', '"+y', {})
--map('n', 'P', '"+p', {})
map('n', '<C-z>', 'u', {})
map('n', '<C-y>', '<C-r>', {})


-- 全选
map('n', '<C-a>', 'ggVG', {silent=true})

-- 选择单词
map('', '<leader>w', 'vaw', {})
-- map('', '<cr>', 'vaw', {})


-- 无效按键
map('', 'u', '<nop>', {})
map('', 's', '<nop>', {})
map('', 'S', '<nop>', {})


-- 插件管理
map('', '<leader>pi', ':PackerInstall<CR>', {})
map('', '<leader>pu', ':PackerSync<CR>', {})
map('', '<leader>pc', ':PackerClean<CR>', {})


-- 标签移动/关闭
-- map('', 'sd', ':bp<CR>', {})
-- map('', 'sa', ':bn<CR>', {})
-- map('', 'sc', ':bd<CR>', {})


-- 保存root权限文件
map('', 'ws', ':w !sudo tee %<cr>', {})

-- split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map('', 'si', ':set nosplitbelow<CR>:split<CR>:set splitbelow<CR>', {})
map('', 'sk', ':set splitbelow<CR>:split<CR>', {})
map('', 'sj', ':set nosplitright<CR>:vsplit<CR>:set splitright<CR>', {})
map('', 'sl', ':set splitright<CR>:vsplit<CR>', {})

-- Place the two screens up and down
map('', 'sh', '<C-w>t<C-w>K', {})
-- Place the two screens side by side
map('', 'sv', '<C-w>t<C-w>H', {})



-- Some functional configuration
map('n', '<backspace>', ':noh<cr>', {})   -- cancel highlight that from search
--map('n', '<space>', 'viw', {})        -- select a word
--map('n', '-', '@q', {})           -- play the macro 'q'

-- -- Telescope
-- Find file
map("n", "ff", "<cmd>Telescope find_files theme=dropdown<CR>", {})
-- Find word
map("n", "fg", "<cmd>Telescope grep_string theme=dropdown<CR>", {})
-- Find special sample
map("n", "fb", "<cmd>Telescope buffers theme=dropdown<CR>", {})
-- check help doc
map("n", "fh", "<cmd>Telescope help_tags theme=dropdown<CR>", {})
-- check recent files
map("n", "fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", {})
-- find marks
map("n", "fm", "<cmd>Telescope marks theme=dropdown<CR>", {})

-- Open Terminal
-- vim.cmd('autocmd TermOpen term://* startinsert')
-- map('n', '<leader>T', ':term<CR>', {})

-- Open Lazygit
map('n', '<C-g>', ':FloatermNew --height=0.95 --width=0.95 lazygit<CR>', {})

-- 开始宏录制
map('', '<leader>q', ':normal @', {})

--
require ('conf.barbar')

-- 浮动终端
map("n", "<F8>", ":FloatermNew<CR>", {})
map("t", "<F8>", '<C-\\><C-n>:FloatermNew<CR>', {})
map("n", "<F9>", ":FloatermPrev<CR>", {})
map("t", "<F9>", "<C-\\><C-n>:FloatermPrev<CR>", {})
map("n", "<F10>", ":FloatermNext<CR>", {})
map("t", "<F10>", "<C-\\><C-n>:FloatermNext<CR>", {})
map("n", "<F12>", ":FloatermToggle<CR>", {})
map("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", {})


-- " nnoremap <c-h> <Replace-Shortcut>  :Farr<cr>
-- " nnoremap <c-h> <Replace-Shortcut>  :Farr<cr>
--
-- vim.cmd("let g:coq_settings = { 'keymap.jump_to_mark': '<leader>g' }")

-- 获得补全内容：ctrl+o
--

