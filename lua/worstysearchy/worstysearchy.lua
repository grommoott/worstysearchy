local settings = {}
local package = {}

local function search(text)
	local linesCount = vim.api.nvim_buf_line_count(0)
	local lines = vim.api.nvim_buf_get_lines(0, 0, linesCount, false)
	local lineIndex = 1

	for _, line in pairs(lines) do
		local searchResult = string.find(line, text)

		if searchResult ~= nil then
			return { lineIndex, searchResult - 1 }
		end

		lineIndex = lineIndex + 1
	end

	return nil
end

local function worsty_search()
	local prompt = "Search...worsty..."

	if settings.prompt ~= nil then
		prompt = settings.prompt
	end

	vim.ui.input({ prompt }, function(text)
		local pos = search(text)

		if pos == nil then
			return
		end

		vim.api.nvim_win_set_cursor(0, pos)
	end)
end

local function init(opts)
	settings = opts
	local hotkey = settings.hotkey or "<leader>si"

	vim.keymap.set("n", hotkey, function()
		worsty_search()
	end)
end

package.init = init
return package
