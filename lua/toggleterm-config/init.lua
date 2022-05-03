require'toggleterm'.setup {
    size = 13,
    open_mapping = [[<C-t>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '1',
    start_in_insert = true,
    persist_size = true,
    direction = 'float',
    float_opts = {
        border = 'double',
        width = 120,
        height = 25,
        winblend = 3,
        highlights = {border = "Normal", background = "Normal"}
    }
}
