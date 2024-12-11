local M = {}

local function init(opts)
	vim.print("Hello world!")
	-- require("worstysearchy.worstysearchy").Init(opts)
end

-- @param opts? worstysearchy.Config
function M.setup(opts)
	vim.notify("Hello world!", vim.log.levels.INFO, { title = "WorstySearchy" })
end

return M
