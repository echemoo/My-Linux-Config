-- change default mappings
local keymap_list = {
  { key = { "o", "l", "<2-LeftMouse>" }, action = "edit" },
  { key = "h", action = "close_node" },
  { key = "p", action = "preview" },
  { key = "<C-r>", action = "refresh" },
  { key = "yn", action = "copy_name" },
  { key = "yp", action = "copy_path" },
  { key = "yy", action = "copy_absolute_path" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "I", action = "toggle_git_ignored" },
  { key = "R", action = "refresh" },
  { key = "?", action = "toggle_help" },
  { key = "<CR>", action = "cd" },

  { key = "W", action = "collapse_all" },
  { key = "E", action = "expand_all" },
}

require 'nvim-tree'.setup {
  filters = {
      -- 不显示 .git 目录中的内容
      custom = {
          ".git/",
          ".bloop"
      },
      -- 显示 .gitignore
      exclude = {
          ".gitignore"
      },
      -- 不显示隐藏文件
      dotfiles = true
  },

  renderer = {
    group_empty = true,
  },

  view = {
    side = 'right',
    mappings = {
      custom_only = true,
      list = keymap_list
    },
  },

  actions = {
    open_file = {
      quit_on_open = false,
      window_picker = {
        enable = false,
      }
    }
  },
}

