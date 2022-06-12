local chadtree_settings = {
  options = {
    show_hidden = false
  },
  view = {
    width = 25
  },
  theme = {
    text_colour_set = "nord"
  },
  keymap = {
    primary = {"<enter>", "o"},
    open_sys = {"<s-o>"}
  }
  --[[ ignore = {
    name_exact = {"vendor"}
  } ]]
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
