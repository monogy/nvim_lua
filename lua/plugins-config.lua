local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--- Vista.vim
map('', '<F4>', ':Vista!!<CR>', {})
map('', '<C-t>', ':Vista finder<CR>', {})

--- Ranger

map('', 'R', ':Ranger<CR>', {})
vim.cmd('let g:ranger_map_keys = 0')


--- Colorizer
vim.cmd('let g:colorizer_syntax = 1')

--- Nerd-Commenter
vim.cmd('let g:NERDSpaceDelims=1')
--- 注释/反注释
map('','<F7>','<plug>NERDCommenterToggle',{})


--- 顶部状态栏xtabline

-- 打开nvim时，更换xtabline主题
-- vim.cmd('autocmd VimEnter * XTabTheme dracula')
-- vim.cmd('let g:mkdp_page_title = "「${name}」"')

-- rainbow 彩虹括号
vim.cmd('let g:rainbow_active = 1')

---
-- Markdown Settings
---
-- Snippets
-- source $XDG_CONFIG_HOME/nvim/md-snippets.vim
vim.cmd('source $HOME/.config/nvim/other/md-snippets.vim')
-- auto spell
vim.cmd('autocmd BufRead,BufNewFile *.md setlocal spell')

------ Vim Markdown Preview

------ Example: To display images with the hotkey mapping (defaults to Control p).
------ let vim_markdown_preview_toggle=1

------ Example: To display images automatically on buffer write.
vim.cmd('let vim_markdown_preview_toggle=2')

------ Example: To disregard images and still automatically preview on buffer write.
------ let vim_markdown_preview_toggle=3
vim.cmd('let vim_markdown_preview_use_xdg_open=1')


------ md-img-paste.vim 将剪切板中的图片插入为Markdown 代码

vim.cmd('autocmd FileType markdown let g:PasteImageFunction = "g:MarkdownPasteImage"')
vim.cmd('autocmd FileType tex let g:PasteImageFunction = "g:LatexPasteImage"')

------设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
vim.cmd('let g:mdip_imgdir = "pic" ')
------设置默认图片名称。当图片名称没有给出时，使用默认图片名称
vim.cmd('let g:mdip_imgname = "image"')
------设置快捷键，个人喜欢 Ctrl+v 的方式，比较直观
vim.cmd('autocmd FileType markdown nnoremap <silent> <C-v> :call mdip#MarkdownClipboardImage()<CR>F%i')


-- " IndentLines
map('n', '<LEADER>il', ':IndentLinesToggle<CR>', {})
vim.cmd('let g:indentLine_enabled = 0')
vim.cmd('let g:indentLine_char_list = ["|", "¦", "┆", "┊"]')

-- auto-format
map('', '<F6>', ':Autoformat<CR>', {})
vim.cmd('let g:autoformat_verbosemode=1')
vim.cmd('let g:formatter_yapf_style = "pep8"')

-- 底部状态栏 eleline
-- vim.cmd('let g:eleline_powerline_fonts = 0')


-- nvim-tree
map('', '<F3>', ':NvimTreeToggle<CR>', {})


-- FZF
map('n', '<C-p>', ':FZF <right>', {})


-- far
vim.cmd('set lazyredraw')
vim.cmd('set regexpengine=1')       -- " improve scrolling performance when navigating through large results
vim.cmd('set ignorecase smartcase') -- " use old regexp engine
vim.cmd('let g:far#enable_undo=1')  -- " ignore case only when the pattern contains no capital letters

map('n', '<leader>h', ':Far  %<left><left>', {})
map('n', '<c-f>', ':F <right>', {})
map('n', '<leader>d', ':Fardo<CR>', {})



-- IndentLines
map('n', '<C-l>', ':IndentLinesToggle<CR>', {})
vim.cmd([[

let g:indentLine_enabled = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

]])


-- Tabular
map('', '.', ':Tab /', {})


-- vim.cmd([[
-- " press <Tab> to expand or jump in a snippet. These can also be mapped separately
-- " via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
-- " -1 for jumping backwards.
-- inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

-- snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
-- snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

-- " For changing choices in choiceNodes (not strictly necessary for a basic setup).
-- imap <silent><expr> <CR> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<CR>'
-- smap <silent><expr> <CR> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<CR>'
-- ]])


-- vim.cmd([[
-- " 🐓 Coq completion settings

-- " Set recommended to false
-- let g:coq_settings = { "keymap.recommended": v:false }

-- " Keybindings
-- ino <expr> <Esc>   pumvisible() ? "\<C-e><Esc>" : "\<Esc>"
-- ino <expr> <C-c>   pumvisible() ? "\<C-e><C-c>" : "\<C-c>"
-- ino <expr> <BS>    pumvisible() ? "\<C-e><BS>"  : "\<BS>"
-- ino <expr> <CR>    pumvisible() ? (complete_info().selected == -1 ? "\<C-e><CR>" : "\<C-y>") : "\<CR>"
-- ino <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- ino <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<BS>"
-- ]]
-- )
--
-- vim.cmd('let g:coq_settings = { "keymap.recommended": v:false }')
-- map('i', '<Esc>', '', {})
-- map('i', '<C-c>', '', {})
-- map('i', '<BS>', '', {})
-- map('i', '<Tab>', '', {})
-- map('i', '<S-Tab>', '', {})


-- vim.cmd('let g:switch_mapping = "<leader>gs"')
--
-- vim.cmd('colorscheme molokai')
--

-- Virtual-Multi
vim.cmd([[

let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_custom_motions             = {'i': 'k', 'j': 'h', 'k': 'j', 'h': 'i'}
let g:VM_maps['i']                  = 'h'
let g:VM_maps['I']                  = 'H'
let g:VM_maps['Find Under']         = '<C-m>'
let g:VM_maps['Find Subword Under'] = '<C-m>'
let g:VM_maps['Find Next']          = 'n'
let g:VM_maps['Find Prev']          = 'N'
let g:VM_maps['Remove Region']      = 'q'
let g:VM_maps['Skip Region']        = '<c-x>'
let g:VM_maps["Undo"]               = '<C-z>'
let g:VM_maps["Redo"]               = '<C-y>'

]])


-- vsnip编辑

map('n','se',':VsnipOpenEdit<CR>',{})



