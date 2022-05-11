require 'basic'
require 'plugins'

--let s:core_conf_files = [
--      \ 'misc.vim',
--      \ 'coc.vim',
--      \ 'debug.vim',
--      \ 'ccls.vim',
--      \ 'wilder.vim',
--      \ 'startify.vim',
--      \ 'airline.vim',
--      \ ]
--
-- \ 'airline.vim',
--for s:fname in s:core_conf_files
--  execute printf('source %s/vim/%s', stdpath('config'), s:fname)
--endfor
--
-- 加载 lua 配置
--lua require 'buffer-config'
--lua require 'orgmode-config'
--lua require 'telescope-config'
--lua require 'tree-config'
--lua require 'whichkey-config'
--lua require 'code-runner-config'
--lua require 'colorizer'.setup{'css'; 'javascript'; 'vim'; html = { mode = 'foreground';}}
--lua require('nvim-autopairs').setup{}
