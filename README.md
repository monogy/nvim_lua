# 我的NeoVim Lua配置文件
       __  ____   ___   _         __     ___           _    _   _
      |  \/  \ \ / / \ | | ___  __\ \   / (_)_ __ ___ | |  | | | | __ _
      | |\/| |\ V /|  \| |/ _ \/ _ \ \ / /| | '_ ` _ \| |  | | | |/ _` |
      | |  | | | | | |\  |  __/ (_) \ V / | | | | | | | |__| |_| | (_| |
      |_|  |_| |_| |_| \_|\___|\___/ \_/  |_|_| |_| |_|_____\___/ \__,_|


## 基于neovim的lua配置文件

## 1.安装插件

### 1.1 LSP服务/美化

|插件名称|解释|
:---|:---|
|`packer`|lua包管理工具|
|`williamboman/nvim-lsp-installer`|LSP服务器|
|`neovim/nvim-lspconfig`|LSP服务器配置|
|`hrsh7th/cmp-nvim-lsp`|LSP补全|
|`tami5/lspsaga.nvim`|LSP UI美化|
|`onsails/lspkind-nvim`|代码提示中,显示分类的小图标支持|
|`stevearc/dressing.nvim`|代码提示|
|`nvim-treesitter/nvim-treesitter`|代码高亮，增量选择|
|`flazz/vim-colorschemes`|改变neovim配色|
|`hrsh7th/cmp-path`|文件路径补全|
|`hrsh7th/cmp-emoji`|emoji表情支持|
|`hrsh7th/cmp-buffer`|buffer|
|`hrsh7th/nvim-cmp`|自动补全|
|`hrsh7th/cmp-vsnip` <br> `hrsh7th/vim-vsnip` <br> `saadparwaiz1/cmp_luasnip` <br> `saadparwaiz1/cmp_luasnip` <br> `L3MON4D3/LuaSnip` |Snip|
|`NTBBloodbath/doom-one.nvim`|neovim起始页|
|`goolord/alpha-nvim`|nvim开始界面导航|
|`xiyaowong/nvim-cursorword`|光标下划线|
|`NTBBloodbath/galaxyline.nvim`|轻量级的Super Fast statusline插件|
|`romgrk/barbar.nvim`|tabline plugin|
|`SmiteshP/nvim-gps`|Statusline component|
|`SmiteshP/nvim-navic`|Simple winbar/statusline plugin that shows your current code context |
|`chipsenkbeil/distant.nvim`|在舒适的本地环境中，在远程机器上编辑文件、运行程序和使用 LSP|


### 1.2 其他插件
|插件名称|解释|
:---|:---|
|`numToStr/Comment.nvim`|注释插件-未配置使用|
|`scrooloose/nerdcommenter`|代码注释插件|
|`Yggdroot/indentLine`|缩进显示|
|`brooth/far.vim`|查找和替换文本|
|`junegunn/fzf`|模糊文件搜索|
|`nvim-telescope/telescope.nvim`|文件模糊搜索|
|`kyazdani42/nvim-tree.lua`|左侧文件/文件夹显示|
|`liuchengxu/vista.vim`|在当前文件的窗口中列出所有函数和变量|
|`vim-visual-multi`|多光标操作|
|`francoiscabrol/ranger.vim`|终端文件管理|
|`AndrewRadev/switch.vim`|快速转换:true/false|
|`jiangmiao/auto-pairs`|自动闭合 `({[]})`|
|`luochen1990/rainbow`|彩虹括号|
|`kshenoy/vim-signature`|增强Vim的书签功能|
|`tamlok/vim-markdown`|markdown编写插件|
|`iamcco/markdown-preview.nvim`|markdown文件预览|
|`iamcco/mathjax-support-for-mkdp`|markdown支持数学公式编辑|
|`ferrine/md-img-paste.vim`|markdown支持插入图片|
|`xiyaowong/nvim-cursorword`|光标下划线|
|`godlygeek/tabular`|对文本进行列对齐 `.`|
|`Chiel92/vim-autoformat`|配置格式化程序代码|
|`junegunn/vim-peekaboo`|寄存器查看 `"`|
|`airblade/vim-gitgutter`|快速显示当前文件的git diff信息|
|`voldikss/vim-floaterm`|neovim浮动终端|




## 2.快捷键

### 2.1 新按键映射

New cursor movement (the default arrow keys are used for resizing windows)  

&nbsp; &nbsp; &nbsp; &nbsp; ^  
&nbsp; &nbsp; &nbsp; &nbsp; i  
 < j&nbsp; &nbsp; &nbsp; &nbsp; l >  
&nbsp; &nbsp; &nbsp; &nbsp; k  
&nbsp; &nbsp; &nbsp; &nbsp; v  



|原map|新map|解释|
:---:|:---:|:---:|
|`i`|`h`|插入|
|`I`|`H`|插入|
|`k`|`i`|光标向上|
|`h`|`j`|光标向左|
|`j`|`k`|光标向下|
|`l`|`l`|光标向右|
|`K`|`5i`|光标向上5行|
|`H`|`5j`|光标向左5列|
|`J`|`5k`|光标向下5行|
|`L`|`5l`|光标向右5列|
|`5<C-y>`|`<C-i>`|界面向上5行|
|`5<C-e>`|`<C-k>`|界面向下5行|
|`res +5<CR>`|`<A-up>`|水平窗口大小更改|
|`res -5<CR>`|`<A-down>`|水平窗口大小更改|
|`vertical resize-5<CR>`|`<A-left>`|垂直窗口大小更改|
|`vertical resize+5<CR>`|`<A-right>`|垂直窗口大小更改|
|`^`|`E`|移至行首|
|`$`|`B`|移至行尾|
|`:`|`;`||


### 2.2 内置快捷键

|快捷键|模式|解释|  
:---|:---:|:---|
|`BS`||`noh<CR>`取消高亮|
|`<`||`<<`左缩进|
|`>`||`>>`右缩进|
|`Q`|``|`q!<cr>` 不保存退出|
|`<C-s>`|``|`w<cr>` 保存|
|`zz`|``|`wq<cr>` 保存并退出|
|`ws`|``|`w !sudo tee %<cr>` 保存root权限文件|
|`Y`|`v`|`+y` 复制至系统剪切板|
|`<C-z`|`n`|`u`撤销|
|`<C-y`|`n`|`<C-r>`重做|
|`<C-a>`|`n`|`ggVG` 全选|
|`<leader>w`|``|`vaw`选择单词|
|`<leader>q`||`normal @` 宏录制|
|`u` `s` `S`|``|无效map|

### 2.3 插件管理

|快捷键|模式|解释|  
:---|:---:|:---:|
|``|``|``|

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<leader>pi`|``|`PackerInstall<CR>` 插件安装|
|`<leader>pu`|``|`PackerSync<CR>` 插件更新|
|`<leader>pc`|``|`PackerClean<CR>` 插件清除|

### 2.4 Split窗口

|快捷键|模式|解释|  
:---|:---:|:---:|
|`si`||向上创建窗口|
|`sk`||向下创建窗口|
|`sj`||向左创建窗口|
|`sl`||向右创建窗口|
|`<leader>i`||光标上移至窗口|
|`<leader>k`||光标下移至窗口|
|`<leader>j`||光标左移至窗口|
|`<leader>l`||光标右移至窗口|
|`sh`||两个窗口上下排布|
|`sv`||两个窗口左右排布|


### 2.5 Lspsaga

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<C-w>`|`i`|`插入emoji`|
|`<A-w>`|`i`|`插入符号`|
|`gD`|`n`|`转到函数声明`|
|`gd`|`n`|`转到函数定义`|
|`rn`|`n`|`重命名`|
|`gx`|`n` `x`|`code_action`|
|`gh`|`n`|`显示初始化变量类型`|
|`go`|`n`|`打开代码诊断问题`|
|`gi`|`n`|`向上转到代码诊断问题`|
|`gk`|`n`|`向下转到代码诊断问题`|
|`<C-u>`|`n`|向上滚动`|
|`<C-d>`|`n`|向下滚动`|
|`gp`|`n`|显示函数定义`|


### 2.6 Telescope

|快捷键|模式|解释|  
:---|:---:|:---:|
|`ff`|`n`|Find File|
|`fg`|`n`|Find Word|
|`fb`|`n`|Find Special Sample|
|`fh`|`n`|Check Help Doc|
|`fo`|`n`|Check Recent File |
|`fm`|`n`|Find Marks|

### 2.7 浮动终端

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<F8`|`n`|创建终端|
|`<F8`|`t`|创建终端|
|`<F9`|`n`|向前切换终端|
|`<F9`|`t`|向前切换终端|
|`<F10`|`n`|向后切换终端|
|`<F10`|`t`|向后切换终端|
|`<F12`|`n`|打开/关闭终端|
|`<F12`|`t`|打开/关闭终端|

### 2.8 Tab标签管理

|快捷键|模式|解释|  
:---|:---:|:---:|
|`sa`|``|`bp<CR>` 标签左移|
|`sd`|``|`bn<CR>` 标签右移|
|`sc`|``|`bd<CR>` 标签关闭|


### 2.9 列出所有函数和变量 - Vista

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<F4>`|``|`Vista!!<CR>` 打开/关闭Vista|
|`<C-t>`|``|`Vista finder<CR>` 查找Vista|


### 2.10 文件管理-Ranger

|快捷键|模式|解释|  
:---|:---:|:---:|
|`R`||`FloatermNew ranger<CR>` 终端打开Ranger|


### 2.11 注释/反注释-Nerdcommenter

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<F7>`|``|`<plug>NERDCommenterToggle` 注释/反注释|


### 2.12 缩进显示-IndentLine

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<C-l>`|`n`|`IndentLinesToggle<CR>`打开/关闭缩进显示|


### 2.13 代码自动格式化-Autoformat

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<F6>`|``|`Autoformat<CR>` 代码格式化|


### 2.14 文件树-nvim-tree

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<F3>`|``|`NvimTreeToggle<CR>` 打开/关闭文件树|


### 2.15 模糊文件搜索-FZF

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<C-p>`|`n`|`FZF <right>` 按路径查找文件|


### 2.16 文本查找/替换-Far

|快捷键|模式|解释|  
:---|:---:|:---:|
|`<leader>h`|`n`|`Far  %<left><left>`|
|`<C-f>`|`n`|`F <right>`|
|`<leader>d|`n`|`Fardo<CR>`|



### 2.17 对文本进行列对齐 Tabular

|快捷键|模式|解释|  
:---|:---:|:---:|
|`.`|``|`Tab /` 对多行文本按指定字符进行对齐|


### 2.18 代码片段-Snip
|快捷键|模式|解释|  
:---|:---:|:---:|
|`se`|`n`|`VsnipOpenEdit<CR>` 打开Snip片段编辑|




### 2.19 vim-visual-multi

|快捷键|解释|  
:---|:---|
|`Enter` <br> `Ctrl+m`|进入多光标模式，获取全部文本|
|`n`|寻找并选中下一个匹配|
|`N`|寻找并选中上一个匹配|
|`q`|去掉该匹配，光标移至前一个|
|`Ctrl+x`|跳过该匹配，光标移至后一个|
|`Ctrl+z`|撤销|
|`Ctrl+y`|重做|

### 2.20 文本标记-BookMarks

|快捷键|模式|解释|  
:---|:---:|:---:|
|`mx`|`n`|`自定义x增加标签`|
|`m,`|`n`|`按顺序增加标签`|
|`m.`|`n`|`按顺序增加标签/去掉标签`|
|`m/`|`n`|`列出标签`|
|`m?`|`n`|`列出标签个数`|
|`m<space>`|`n`|`去掉所有标签`|
|`'x`|`n`|`转到标签x`|
|`'[`|`n`|`转到上一个标签`|
|`']`|`n`|`转到下一个标签`|




