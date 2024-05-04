local N = {}
local PATH_SEP = vim.loop.os_uname().version:match("Windows") and "\\" or "/"

local get_compiled_path = function(theme_name)
    return table.concat({
        vim.fn.stdpath("state"), "nagisa", theme_name .. "_compiled.lua"
    }, PATH_SEP)
end

function N.compile(theme_name, theme, opts, colors)
    vim.loop.fs_mkdir(vim.fn.stdpath("state") .. PATH_SEP .. "nagisa", 448)

    local fname = get_compiled_path(theme_name)
    local file, err = io.open(fname, "wb")
    if not file or err then
        vim.notify("Nagisa: Error writing " .. fname .. ":\n" .. err,
                   vim.log.levels.ERROR)
        return
    end

    theme.set_highlights(colors, opts)

    local lines = {
        "require'nagisa'.compiled = string.dump(function()", "local g = vim.g",
        "local nvim_set_hl = vim.api.nvim_set_hl"
    }
    local highlights = require('nagisa.highlights.init').setup(colors, opts)
    local inspect = vim.inspect
    for hl, spec in pairs(highlights) do
        if next(spec) then
            table.insert(lines, ('nvim_set_hl(0, "%s", %s)'):format(hl, inspect(
                                                                        spec):gsub(
                                                                        "%s", "")))
        end
        -- for i, tcolor in ipairs(termcolors) do
        --     table.insert(lines, ('g["terminal_color_%d"] = "%s"'):format(i - 1, tcolor))
        -- end
    end
    table.insert(lines, "end)")

    local blob = table.concat(lines, "\n")
    assert(loadstring(blob, "=(compile)"))()
    file:write(require("nagisa").compiled)
    file:close()
end

---@param theme_name string
---@return boolean status
function N.load_compiled(theme_name)
    local f = loadfile(get_compiled_path(theme_name))
    if f then
        f()
        return true
    end
    return false
end

return N
