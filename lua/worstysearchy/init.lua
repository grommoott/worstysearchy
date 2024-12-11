local M = {}

-- @param opts? worstysearchy.Config
function M.setup(opts)
	require("worstysearchy.worstysearchy").init(opts)
end

return M
