require('nvim-autopairs').setup {
  check_ts = true,
  map_cr = true
}

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

if (cmp ~= nil) then
  cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
end

-- cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "racket"
