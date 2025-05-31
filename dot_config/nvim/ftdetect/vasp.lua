vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.vasp", "INCAR", "POSCAR", "POTCAR", "KPOINTS", "*.poscar" },
  callback = function()
    vim.bo.filetype = "vasp"
    vim.bo.commentstring = "#%s"
    vim.bo.syntax = "bash"
  end,
})
