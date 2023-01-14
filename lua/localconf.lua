-- local colors = require("galaxyline.themes.colors").doom-one
vim.o.relativenumber = true
vim.o.number = true
vim.o.noexpandtab = true
vim.o.softtabstop = 2
vim.o.showtabline = 2
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.mouse = 'a'
vim.o.scrolloff = 4
vim.o.expandtab = true
-- vim.o.smartindent = true
vim.o.autoindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.wildmenu = true
vim.o.ignorecase = true
vim.o.swapfile = true

vim.cmd('hi Normal ctermfg=252 ctermbg=none')

-- vim.cmd('set mouse+=a')

--vim.o.autochdir = true
vim.o.t_Co = 256

-- vim.cmd('set term=xterm')
-- vim.cmd('set t_Co=256')
-- vim.cmd('let g:rehash256 = 1')

vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
-- vim.cmd('let autosave=30')
vim.o.autoread = true
vim.o.ruler = true
vim.o.exrc = true
vim.o.secure = true
--vim.o.hidden = true
-- vim.o.autoindent = true
vim.o.list = true

--vim.o.ttimeoutlen = 0
--vim.o.notimeout = true
-- vim.o.viewoptions = 'cursor,folds,slash,unix'
vim.o.wrap = true
vim.o.re = 0
vim.o.tw = 0
vim.o.foldenable = true
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 99

vim.o.splitright = true
vim.o.splitbelow = true
vim.o.noshowmode = true
vim.o.showcmd = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.inccommand = 'split'
-- vim.o.completeopt = 'longest,noinsert,menuone,noselect,preview'

-- Markdown-Preview.nvim
--vim.g.mkdp_filetypes = { 'markdown' }
--vim.cmd('autocmd vimenter *.md exec ":MarkdownPreview"')

-- 记录光标位置
--vim.cmd('au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif')
vim.cmd([[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]])

-- 中文乱码
vim.o.regexpengine=1
vim.o.termencoding='UTF-8'
vim.o.encoding='UTF-8'
vim.o.fileencodings='UTF8,UCS-BOM,GBK,CP936,GB2312,GB18030'

vim.cmd('set backupdir=~/.config/nvim/tmp/backup,.')
vim.cmd('set directory=~/.config/nvim/tmp/backup,.')
vim.cmd('silent !mkdir -p ~/.config/nvim/tmp/backup')



-- vim.cmd('let g:lightline={ "enable": {"statusline": 1, "tabline": 0} }')

require('bufferline').setup {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  -- exclude_ft = {'javascript'},
  -- exclude_name = {'package.json'},

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = 'both',
  -- icons = false,

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}


-- Necessary Commands to Execute
vim.cmd('exec "nohlsearch"')

-- GitGutter 保存时更新git状态
vim.cmd('autocmd BufWritePost * GitGutter')


--中英文输入法切换
vim.cmd([[

let g:input_toggle = 1
function! Fcitx2en()
  let s:input_status = system("fcitx5-remote")
  if s:input_status == 2
    let g:input_toggle = 1
    let l:a = system("fcitx5-remote -c")
  endif
endfunction

function! Fcitx2zh()
  let s:input_status = system("fcitx5-remote")
  if s:input_status != 2 && g:input_toggle == 1
    let l:a = system("fcitx5-remote -o")
    let g:input_toggle = 0
  endif
endfunction

autocmd InsertLeave * call Fcitx2en()

]])

