local Menu = require("nui.menu")
local event = require("nui.utils.autocmd").event

local function get_skin_names()
  local glob_str = vim.fn.glob(vim.fn.stdpath("config") .. "/lua/skins/*.lua")
  local file_table = {}
  for line in string.gmatch(glob_str, "[^\n]+") do
    filepart = string.match(line, ".*/([^/]+).lua$")
    table.insert(file_table, filepart)
  end
  return file_table
end

return {
  do_skin_picker = function()
    menu_items = {}
    for ii, item in ipairs(get_skin_names()) do
      table.insert(menu_items, Menu.item(ii .. ". " .. item, { id = ii, file = item }))
    end

    local menu = Menu({
      position = "50%",
      size = {
        width = 25,
        height = 25,
      },
      border = {
        style = "single",
        text = {
          top = "Select Theme",
          top_align = "center",
        },
      },
      win_options = {
        winhighlight = "Normal:Normal,FloatBorder:Normal",
      },
    }, {
      lines = menu_items,
      max_width = 20,
      keymap = {
        focus_next = { "j", "<Down>", "<Tab>" },
        focus_prev = { "k", "<Up>", "<S-Tab>" },
        close = { "<Esc>", "<C-c>" },
        submit = { "<CR>", "<Space>" },
      },
      on_close = function()
        print("Menu Closed!")
      end,
      on_submit = function(item)
        vim.cmd("luafile " .. vim.fn.stdpath("config") .. "/lua/skins/" .. item.file .. '.lua')
      end,
    })

    -- mount the component
    menu:mount()
  end,
}

