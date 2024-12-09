local M = {}

-- @param opts? worstysearchy.Config
function M.setup(opts)
	require("./worstysearchy.lua").Init(opts)
end

return M
