return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      },
      ensure_installed = {
        -- work
        "cpp",
        "java",
        "cmake",
        "make",
        -- web
        "typescript",
        "php",
        "sql",
        -- front
        "pug",
        "javascript",
        "css",
        -- hw
        "verilog",
        -- doc
        "markdown",
        "markdown_inline",
        "latex",
        -- configs
        "python",
        "bash",
        "ssh_config",
        "lua",
        "vim",
        "toml",
      }
    })
  end
}
