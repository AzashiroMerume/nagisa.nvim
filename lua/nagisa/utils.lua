local N = {}
local PATH_SEP = vim.loop.os_uname().version:match("Windows") and "\\" or "/"

local function get_compiled_path(theme)
	return table.concat({
		vim.fn.stdpath("state"),
		"nagisa",
		theme .. "_compiled.lua",
	}, PATH_SEP)
end

local function serialize_highlights(highlights)
	local lines = {}
	local inspect = vim.inspect
	for hl, spec in pairs(highlights) do
		if next(spec) then
			local serialized_spec = inspect(spec):gsub("%s+", " ")
			table.insert(lines, ('vim.api.nvim_set_hl(0, "%s", %s)'):format(hl, serialized_spec))
		end
	end
	return table.concat(lines, "\n")
end

local function save_compiled_highlights(path, highlights)
	local file = io.open(path, "w")
	if file then
		file:write(serialize_highlights(highlights))
		file:close()
	else
		error("Could not open file for writing: " .. path)
	end
end

function N.compile(theme, opts, colors)
	local highlights = require("nagisa.highlights.init").setup(colors, opts)

	local path = get_compiled_path(theme)
	save_compiled_highlights(path, highlights)
end

---@param theme string
---@return boolean status
function N.load_compiled(theme)
	local f = loadfile(get_compiled_path(theme))
	if f then
		f()
		return true
	end
	return false
end

return N
