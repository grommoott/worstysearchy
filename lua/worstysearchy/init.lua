local M = {}

local function init(opts)
	require("worstysearchy.worstysearchy").Init(opts)
end

-- @param opts? worstysearchy.Config
local function setup(opts)
	vim.api.nvim_create_autocmd("VimEnter", {
		callback = function()
			init(opts)
		end,
	})
end

M.setup = setup

return M
