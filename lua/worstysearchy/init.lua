local M = {}

local function init(opts)
	vim.print("Hello world!")
	-- require("worstysearchy.worstysearchy").Init(opts)
end

-- @param opts? worstysearchy.Config
local function setup(opts)
	vim.print("Hello world")
end

M.setup = setup

return M
