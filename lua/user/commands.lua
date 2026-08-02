vim.api.nvim_create_user_command("A", function()
  local current_file = vim.fn.expand("%:p")
  local base_name = vim.fn.expand("%:p:r")
  local files = vim.fn.glob(base_name .. ".*", true, true)

  local items = {}
  for _, file in ipairs(files) do
    if file ~= current_file then
      table.insert(items, {
        text = vim.fn.fnamemodify(file, ":t"), 
        file = file,                           
      })
    end
  end

  if #items == 0 then
    vim.notify("No related files found.", vim.log.levels.WARN, { title = "Snacks Picker" })
    return
  elseif #items == 1 then
    -- If there is exactly one alternative, jump directly
    vim.cmd("edit " .. vim.fn.fnameescape(items[1].file))
    return
  end

  Snacks.picker({
    title = "Related Files",
    items = items,
    format = "file",
    layout = { preset = "select" }, 
  })
end, { desc = "Alternate files (header/impl)" })
