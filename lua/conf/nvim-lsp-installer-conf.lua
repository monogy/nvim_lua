require("nvim-lsp-installer").setup({
    automatic_installation =false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    },

    github = {
          -- download_url_template = "https://hub.fastgit.xyz/%s/releases/download/%s/%s",
          default_url_format = "https://ghproxy.com/https://github.com/%s/releases/download/%s/%s",
          -- download_url_template = "https://mirror.ghproxy.com/https://github.com/%s/releases/download/%s/%s",
    }
})

