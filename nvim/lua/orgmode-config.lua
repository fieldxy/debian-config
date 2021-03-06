require('orgmode').setup_ts_grammar()

require 'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = { 'org' }, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = { 'org' }, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  -- ensure_installed = "maintained",
  ensure_installed = { 'org' },
}

require('orgmode').setup({
  org_agenda_files = { '~/work/bak/org/*' },
  org_default_notes_file = '~/work/bak/org/refile.org',
  mappings = {
    global = {
      org_agenda = '<space>oa',
      org_capture = '<space>oc'
    },
    agenda = {
      org_agenda_todo = 't'
    },
    org = {
      org_todo = 't',
      -- org_cycle use `Tab` which making window switch unusble
      org_cycle = 'x',
      org_insert_todo_heading = '<leader>a'
    }
  },
})
