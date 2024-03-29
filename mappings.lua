---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- More keybinds taken from https://neovim.io/doc/user/vimindex.html
    ["<C-q>"] = { "<C-W>q", "Quit current window" },
    ["<C-r>"] = { "<C-W>r", "Rotate windows downwards N times"},
    ["<C-s>"] = { "<C-W>s", "Split the current window into two parts, new Window N lines high"},
    ["<C-v>"] = { "<C-W>v", "Split the current window vertically, new window N colums wide"},

    -- Keybinds to make common tasks easier to call
    ["<C-g>"] = { "1<C-G>", "Show the full filepath of the file currently opened"}
  },
}

-- more keybinds

return M
