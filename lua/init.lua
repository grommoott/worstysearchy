local M = {}

-- @param opts? worstysearchy.Config
local function setup(opts)
	require("worstysearchy.worstysearchy.lua").Init(opts)
end

M.setup = setup

return M
