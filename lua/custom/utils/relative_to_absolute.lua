return function(path)
  return vim.fn.fnamemodify(path, 'rb')
end
