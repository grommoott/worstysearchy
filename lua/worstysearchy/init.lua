local M = {}

-- @param opts? worstysearchy.Config
function M.setup(opts)
	require("worstysearchy.worstysearchy").Init(opts)
end

return M
