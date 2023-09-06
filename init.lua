local autocmd = vim.api.nvim_create_autocmd

-- Providers
-- vim.g.loaded_python3_provider = '/usr/bin/python3'
-- vim.g.python3_host_prog = '/usr/bin/python3'

local enable_providers = {
  "python3_provider",
  "node_provider",
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
