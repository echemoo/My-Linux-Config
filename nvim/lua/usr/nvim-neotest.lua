require("neotest").setup({
  adapters = {
    -- require("neotest-python")({
    --   dap = { justMyCode = false },
    -- }),
    -- require("neotest-plenary"),
    require("neotest-rust"),
    -- require("neotest-vim-test")({
    --   ignore_file_types = { "python", "vim", "lua" },
    -- }),
  },
})
