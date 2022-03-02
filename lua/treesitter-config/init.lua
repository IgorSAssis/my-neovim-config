vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)

require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {"bash", "c", "cpp", "cmake", "css", "dockerfile", "go", "graphql", "html", "http", "java", "javascript", "jsdoc", "kotlin", "lua", "make", "php", "phpdoc", "python", "regex", "ruby", "rust", "scss", "toml", "tsx", "typescript", "vim", "vue", "yaml"},
  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,
  -- List of parsers to ignore installing
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,    
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autopairs = { enabled = true }
}
