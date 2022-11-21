-- vim.cmd [[packadd packer.nvim]]

-- return require('packer').startup(function()

--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})  --默认地址
  fn.system(
  {"git", "clone", "--depth", "1", "https://ghproxy.com/https://github.com/wbthomason/packer.nvim.git", install_path}
  -- {"git", "clone", "--depth", "1", "https://mirror.ghproxy.com/https://github.com/wbthomason/packer.nvim.git", install_path}
  ) --csdn加速镜像
  vim.cmd "packadd packer.nvim"
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require("packer").startup(
{
  function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Lsp config
    use {
      'williamboman/nvim-lsp-installer',
      config = function ()
        require('conf.nvim-lsp-installer-conf')
      end
    }

    use {
      'mg979/vim-visual-multi',
      branch = 'master'
    }

    -- use 'neovim/nvim-lspconfig'
    -- use 'SirVer/ultisnips'
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client

    use "onsails/lspkind-nvim" --美化自动完成提示信息
    use "hrsh7th/cmp-path" --自动提示硬盘上的文件
    -- use "f3fora/cmp-spell" --nvim-cmp 的拼写源基于 vim 的拼写建议
    -- use "octaltree/cmp-look" --用于完成英语单词
    use "hrsh7th/cmp-emoji" --输入: 可以显示表情

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    -- use 'hrsh7th/cmp-cmdline'

    -- " For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip' -- 使用 VsnipOpenEdit 编辑

    -- " For luasnip users.
    use 'saadparwaiz1/cmp_luasnip'

    use {'hrsh7th/nvim-cmp',
    require= {
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-nvim-lsp',
      --以下插件可选，可以根据个人喜好删减
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-path", --自动提示硬盘上的文件
      "hrsh7th/cmp-buffer", --从buffer中智能提示
      -- "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
      -- "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
      -- "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
      -- "octaltree/cmp-look", --用于完成英语单词
      "hrsh7th/cmp-emoji", --输入: 可以显示表情
    }
  }
    use {
      "L3MON4D3/LuaSnip", -- Snippets plugin
      requires = {
        "honza/vim-snippets",
        "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
        "rafamadriz/friendly-snippets", --代码段合集
      }

    }
    --use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    -- use 'rafamadriz/friendly-snippets'
    -- use {
    -- 'ms-jpq/coq_nvim',
    -- run = 'python3 -m coq deps',
    -- }
    -- use 'ms-jpq/coq.artifacts'
    -- use 'ms-jpq/coq.thirdparty'

    -- use {
    -- 'SirVer/ultisnips',
    -- requires = {{'honza/vim-snippets', rtp = '.'}},
    -- config = function()
    -- vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
    -- vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
    -- vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
    -- vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
    -- vim.g.UltiSnipsRemoveSelectModeMappings = 0
    -- end
    -- }
    -- lspsaga beautify the windows of lsp
    use {
      'tami5/lspsaga.nvim',
      config = function()
        require('conf.lspsaga-conf')
      end
    }

    -- Dashboard
    use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = function ()
        -- require'alpha'.setup(require'alpha.themes.startify'.config)
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
    }

    -- Comment plugin
    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup{}
      end
    }

    use 'xiyaowong/nvim-cursorword'

    -- 底部状态栏
    use({
      "NTBBloodbath/galaxyline.nvim",
      -- your statusline
      config = function()
        require("galaxyline.themes.eviline")
        -- require("galaxyline.themes.spaceline")
      end,
      -- some optional icons
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })

    --- 顶部tab栏
    -- use {
    -- 'akinsho/bufferline.nvim',
    -- tag = "v2.*",
    -- requires = 'kyazdani42/nvim-web-devicons',
    -- config = function()
    -- -- require('bufferline').setup{}
    -- -- require('conf.bufferline-conf')

    -- end
    -- }

    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'},
      config = function()
        require('conf.barbar')
      end

    }
    -- Dirctory Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      tag = 'nightly', -- optional, updated every week. (see issue #1193)
      config = function()
        require('nvim-tree').setup{}
      end
    }

    --- Lua port of doom-emacs' doom-one for Neovim
    use{
      'NTBBloodbath/doom-one.nvim',
      config = function()
        require('doom-one').setup({
          ui = {
          cursor_coloring = false,
          terminal_colors = false,
          italic_comments = false,
          enable_treesitter = true,
          diagnostics_text_color = false,
          transparent_background = false,
          pumblend = {
            enable = true,
            transparency_amount = 20,
          },},
          plugins = {
            neorg = true,
            barbar = true,
            bufferline = false,
            gitgutter = false,
            gitsigns = true,
            telescope = false,
            neogit = true,
            nvim_tree = true,
            dashboard = true,
            startify = true,
            whichkey = true,
            indent_blankline = true,
            vim_illuminate = true,
            lspsaga = false,
          },
        })
      end,
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        "nvim-lua/plenary.nvim", -- Lua 开发模块
        "BurntSushi/ripgrep", -- 文字查找
        "sharkdp/fd", -- 文件查找
        "xiyaowong/telescope-emoji"
      },
      config = function()
        require('telescope').setup{}
      end
    }

    use {
      'chipsenkbeil/distant.nvim',
      config = function()
        require('distant').setup {
          -- Applies Chip's personal settings to every machine you connect to
          --
          -- 1. Ensures that distant servers terminate with no connections
          -- 2. Provides navigation bindings for remote directories
          -- 3. Provides keybinding to jump into a remote file's parent directory
          ['*'] = require('distant.settings').chip_default()
        }
      end
    }

    -- emoji
    use "stevearc/dressing.nvim"
    use({
      "ziontee113/icon-picker.nvim",
      config = function()
        require("icon-picker")
      end,
    })


    --indentLine 缩进显示
    use 'Yggdroot/indentLine'

    -- 文件搜索
    -- use 'junegunn/fzf.vim'
    -- use 'vijaymarupudi/nvim-fzf'
    -- use { 'ibhagwan/fzf-lua',
    -- -- optional for icon support
    -- requires = { 'kyazdani42/nvim-web-devicons' }
    -- }
    use  {
      'junegunn/fzf',
      -- dir= '~/.config/nvim/fzf',
      run = './install --bin',
    }
    -- 文件管理器
    use 'francoiscabrol/ranger.vim'

    -- Taglist
    use 'liuchengxu/vista.vim'

    -- 复制可视化(使用"/@，打开剪切板)
    use 'junegunn/vim-peekaboo'

    -- 注释/反注释
    use 'scrooloose/nerdcommenter'

    use 'AndrewRadev/switch.vim'

    -- 括号补全
    use 'jiangmiao/auto-pairs'

    -- BookMarks
    use 'kshenoy/vim-signature'

    -- far查找
    use 'brooth/far.vim'

    -- Markdown
    -- 若无法实现预览，则执行: "call mkdp#util#install()" 等待执行完成
    -- 修改markdown-preview.nvim/app/install.sh中的download下的url为url="https://mirror.ghproxy.com/https://github.com/iamcco/markdown-preview.nvim/releases/download/$tag/${1}"

    use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
    })

    use 'iamcco/mathjax-support-for-mkdp'
    use 'tamlok/vim-markdown'

    -- 将剪切板中的图片插入为Markdown 代码
    use 'ferrine/md-img-paste.vim'

    -- 彩虹括号
    use 'luochen1990/rainbow'

    --  顶部状态栏
    -- use 'mg979/vim-xtabline'


    -- 颜色管理
    use 'flazz/vim-colorschemes'

    -- 启动界面
    -- use 'mhinz/vim-startify'

    -- 文本对齐
    use 'godlygeek/tabular'

    -- Formatter
    use 'Chiel92/vim-autoformat'

    -- use 'liuchengxu/eleline.vim'
    --
    -- 补全
    -- use 'ms-jpq/coq_nvim'

    -- " Auto Complete
    -- use 'neoclide/coc.nvim'
    --
    -- git列
    use 'airblade/vim-gitgutter'

  end,

  config = {
    max_jobs = 16,
    git = {
      --修改这里可以切换加速的节点
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      clone_timeout = 60,
      default_url_format = "https://ghproxy.com/https://github.com/%s.git",
    },
    display = {
      open_fn = function()
        return require("packer.util").float({border = "single"})
      end
    }
  }
}
)








